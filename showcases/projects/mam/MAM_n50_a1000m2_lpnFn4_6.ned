
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_6
{
    parameters:
        @display("bgb=800,800;bgg=100,1,grey95;bgu=m");
        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);

        @figure[rcvdPkText](type=indicatorText; pos=50,50; anchor=w; font=,18; textFormat="packets received: %g"; initialValue=0);
        @statistic[packetReceived](source=collector1.app[0].packetReceived; record=figure(count); targetFigure=rcvdPkText);

    submodules:
        visualizer: <default("IntegratedCanvasVisualizer")> like IIntegratedVisualizer if hasVisualizer() {
            @display("p=0,0");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=1,0");
        }
        radioMedium: <default("Ieee802154NarrowbandScalarRadioMedium")> like IRadioMedium {
            @display("p=2,0");
        }
        physicalEnvironment: PhysicalEnvironment {
            @display("p=3,0");
        }
        collector1: <default("WirelessHost")> like INetworkNode {
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=130.37,922.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=148.80,979.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=94.43,991.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=149.59,967.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=71.72,982.09");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=24.41,913.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=51.39,870.96");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=136.87,853.18");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=205.01,912.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=160.72,901.87");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=204.16,931.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=184.36,913.58");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=36.68,947.11");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=195.54,965.55");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=151.40,989.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=70.53,959.87");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=212.92,891.82");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=44.97,985.72");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=8.57,816.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=44.27,883.36");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=80.46,876.88");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=222.89,916.41");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=237.41,905.55");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=157.84,924.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=181.02,935.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=133.77,905.02");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=54.69,895.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=100.27,977.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=125.61,970.45");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=145.24,918.49");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=158.07,936.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=43.46,913.02");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=124.75,889.01");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=121.60,907.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=164.86,877.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,883.45");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=257.97,919.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=114.33,857.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=39.09,958.96");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=205.64,973.03");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=153.61,946.91");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=111.92,979.24");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=66.14,916.33");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=19.46,947.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=50.44,847.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=50.02,806.47");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=174.42,916.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=223.14,904.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=196.80,835.92");
    }

}

