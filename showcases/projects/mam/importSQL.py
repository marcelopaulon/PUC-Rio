import psycopg2, csv, sys, os
from joblib import Parallel, delayed

def processFile(filename, conn, cur):

    print('Processing file ' + filename)
    
    fileArr = filename.split("_")

    if len(fileArr) < 5:
        print("fileArr length < 5. Skipping " + filename)
        return

    assert fileArr[1][0] == 'n'
    node_amount = int(fileArr[1][1:])
    print('Node amount: ' + str(node_amount))

    assert fileArr[2][0] == 'a'
    area_sq_m = int(fileArr[2][1:].replace('m2',''))
    print('Area (m2): ' + str(area_sq_m))

    assert fileArr[3].startswith('lpnFn')
    lpn_fn_ratio = int(fileArr[3][5:])
    print('LPN/FN ratio: ' + str(lpn_fn_ratio))

    runArr = fileArr[4].split('-')
    series = int(runArr[0])

    relay_type = runArr[1]
    print('Relay type: ' + relay_type)

    paramsArr = runArr[2].split(',')

    assert paramsArr[0].startswith('delta=')
    delta_ms = int(paramsArr[0].split('=')[1])
    print ('Delta (ms): ' + str(delta_ms))

    assert paramsArr[1].startswith('speedMps=')
    speed_ms = int(paramsArr[1].split('=')[1])
    print ('Speed (m/s): ' + str(speed_ms))
    
    assert runArr[3].startswith('#')
    assert runArr[3].endswith('.sca')

    rep = int(runArr[3][1:-4])
    print('Rep: ' + str(rep))

    os.system("scavetool x results/" + filename + " -o results/" + filename + ".csv")

    with open('results/' + filename + '.csv', 'r') as f:
        reader = csv.reader(f)
        next(reader) # Skip the header row.
        for row in reader:
            insert_query = "insert into scalars (node_amount, area_sq_m, lpn_fn_ratio, relay_type, delta_ms, speed_ms, series,"
            insert_query = insert_query + " rep, module, name, type, value, full_row, created_at) values "
            insert_query = insert_query + "(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, now()) on conflict do nothing"

            # run,type,module,name,attrname,attrvalue,value,count,sumweights,mean,stddev,min,max,binedges,binvalues
            module = row[2]
            name = row[3]
            type_str = row[1]

            value = None

            if (row[6] != None and row[6] != ''):
                value = float(row[6])

            if '-part' in name and '=' in name:
                divStr = name.split('=')
                
                if (len(divStr) != 2):
                    print(name)

                assert len(divStr) == 2
                name = divStr[0]
                value = divStr[1]

            full_row = ','.join(row)
            
            if name == None or name == '':
                # Use attrname as name key
                name = row[4]

            insertRow = (node_amount, area_sq_m, lpn_fn_ratio, relay_type, delta_ms, speed_ms, series, rep, module, name, type_str, value, full_row)

            cur.execute(insert_query, insertRow)
    conn.commit()
    
    os.system("rm results/" + filename + ".csv")

directory = os.fsencode('results')

files = []

for file in os.listdir(directory):
     filename = os.fsdecode(file)
     if filename.endswith(".sca") is False:
         continue
     files.append(filename)

nFiles = len(files)

print('Found ' + str(nFiles) + ' .sca files.')


def chunks(lst, n):
    # Yield successive n-sized chunks from lst.
    for i in range(0, len(lst), n):
        yield lst[i:i + n]

def run(filenames):
    nChunkFiles = len(filenames)

    i = 0

    conn = psycopg2.connect("host=localhost port=5432 dbname=mam user=postgres password=postgres")
    cur = conn.cursor()

    for filename in filenames:
        i = i + 1

        #try:
        processFile(filename, conn, cur)
        print('Processed ' + str(i) + ' of ' + str(nChunkFiles) + ' files in current worker.')
        #except:
        #    print("An exception occurred when processing " + filename)

workers = 10

Parallel(n_jobs=workers)(delayed(run)(filenames) for filenames in chunks(files, int(nFiles/workers)))