package projects.sanders.nodes.nodeImplementations;

import com.google.gson.Gson;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class DistrictRepository {
    private static Map<Integer, DistrictData> districts = new HashMap<>();
    private static Map<Integer, CoterieData> coterieNodes = new HashMap<>();

    static {
        try {
            initialize();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void initialize() throws IOException {
        try (InputStream inputStream = DistrictRepository.class.getResourceAsStream("/projects/sanders/k9.txt")) {
            BufferedReader br = new BufferedReader(new InputStreamReader(inputStream));

            String line;

            int i = 0;
            while ((line = br.readLine()) != null) {
                String[] nodes = line.split("\\s+");

                for (String districtsCsv : nodes) {
                    if (districtsCsv.isEmpty()) continue;

                    String[] districtIds = districtsCsv.split(",");

                    i++;

                    Set<DistrictData> coterie = new HashSet<>();

                    for (String districtStr : districtIds) {
                        if (districtStr.isEmpty()) continue;

                        int district = Integer.parseInt(districtStr);

                        if (district < 0) {
                            throw new RuntimeException("Invalid district - " + line);
                        }

                        if (!districts.containsKey(district)) {
                            districts.put(district, new DistrictData(new HashSet<>()));
                        }

                        DistrictData districtData = districts.get(district);
                        districtData.getDistrictNodes().add(i);
                        coterie.add(districtData);
                    }

                    coterieNodes.put(i, new CoterieData(coterie));
                }
            }

            System.out.println(new Gson().toJson(districts));
        }
    }

    public static Integer getDistrictCount() {
        return districts.size();
    }

    public static Set<Integer> getDistrictNodes(Integer districtId) {
        DistrictData districtData = districts.get(districtId);

        if (districtData == null) {
            return null;
        }

        return districtData.getDistrictNodes();
    }

    public static Set<Integer> getCoterieNodes(int nodeId) {
        Set<Integer> myCoterieNodes = coterieNodes.get(nodeId).getCoterieNodes();
        myCoterieNodes.remove(nodeId);
        return myCoterieNodes;
    }

    private static class DistrictData {
        private Set<Integer> districtNodes;

        private DistrictData(Set<Integer> districtNodes) {
            this.districtNodes = districtNodes;
        }

        public Set<Integer> getDistrictNodes() {
            return districtNodes;
        }
    }

    private static class CoterieData {
        private Set<DistrictData> coterie;

        private CoterieData(Set<DistrictData> coterie) {
            this.coterie = coterie;
        }

        public Set<Integer> getCoterieNodes() {
            Set<Integer> coterieNodes = new HashSet<>();

            for (DistrictData district : coterie) {
                coterieNodes.addAll(district.getDistrictNodes());
            }

            return coterieNodes;
        }
    }
}
