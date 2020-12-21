rm -f commands.txt
touch commands.txt
cat mamSim.ini | ggrep -P '\[Config ' | sed 's/\[Config \(.*\)\]/ inet --release mamSim.ini -u Cmdenv -c "\1"/' > commands.txt.tmp
cat commands.txt.tmp | while read line; do echo "${line} && rm -f results/*.vec && rm -f results/*.vci">>commands.txt; done
rm commands.txt.tmp

