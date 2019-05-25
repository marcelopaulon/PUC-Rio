package projects.sanders.nodes.nodeImplementations;

import com.google.gson.Gson;
import javafx.beans.property.ReadOnlyListWrapper;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

public class DistrictRepository {
    private static Map<Integer, Set<Integer>> coteries = new HashMap<>();

    static {
        try {
            //genCoteries(25);
            initialize();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void genCoteries(int nodeCount) {
        Map<Integer, Set<Integer>> generatedCoteries = new HashMap<>(nodeCount);

        // node -> index is 1-based
        // rows = columns = sqrt(nodeCount) (nodeCount must be a perfect square)
        // Row (0-based) = Math.floor((node - 1) / columns)
        // Column (0-based) = (node - 1) % columns
        // 1 2 3
        // 4 5 6
        // 7 8 9

        int columns = (int) Math.sqrt(nodeCount);

        int k = 1;
        int[][] data = new int[columns][columns];

        for (int i = 0; i < columns; i++) {
            for (int j = 0; j < columns; j++) {
                data[i][j] = k++;
            }
        }

        for (int i = 0; i < columns; i++) {
            for (int j = 0; j < columns; j++) {
                int node = data[i][j];

                Set<Integer> coterie = new HashSet<>();

                for (k = 0; k < columns; k++) {
                    coterie.add(data[i][k]);
                    coterie.add(data[k][j]);
                }

                coterie.remove(node);

                generatedCoteries.put(node, coterie);
            }
        }

        for (int i = 1; i <= nodeCount; i++) {
            System.out.println(i + "=" + generatedCoteries.get(i).stream().map(Object::toString).collect(Collectors.joining(",")));
        }
    }

    private static void initialize() throws IOException {
        try (InputStream inputStream = DistrictRepository.class.getResourceAsStream("/projects/sanders/k15.txt")) {
            BufferedReader br = new BufferedReader(new InputStreamReader(inputStream));

            String line;

            int i = 0;
            while ((line = br.readLine()) != null) {
                String[] nodes = line.split("\\s+");

                i++;

                for (String districtsCsv : nodes) {
                    if (districtsCsv.isEmpty()) continue;

                    String[] districtAndNodes = districtsCsv.split("=");

                    int node = Integer.parseInt(districtAndNodes[0]);
                    String[] districtNodeIds = districtAndNodes[1].split(",");


                    Set<Integer> coterie = new HashSet<>();

                    for (String districtNode : districtNodeIds) {
                        if (districtNode.isEmpty()) continue;

                        int districtNodeId = Integer.parseInt(districtNode);

                        if (districtNodeId < 0) {
                            throw new RuntimeException("Invalid district - " + line);
                        }

                        coterie.add(districtNodeId);
                    }

                    coteries.put(node, coterie);
                }
            }

            System.out.println(new Gson().toJson(coteries));
        }
    }

    public static Set<Integer> getCoterieNodes(int nodeId) {
        return coteries.get(nodeId);
    }
}
