
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_1
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=143.83,975.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=76.80,940.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=61.14,907.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=46.87,895.27");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=61.07,920.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=61.11,896.49");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=113.55,880.19");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=209.57,944.39");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=59.77,993.43");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=37.76,971.04");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=132.73,900.07");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=118.12,983.29");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=39.03,936.88");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=71.17,820.41");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=141.86,886.88");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=57.47,945.28");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=14.73,836.80");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=42.83,917.37");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=56.70,827.37");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=25.70,935.49");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=146.19,895.98");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=98.94,932.11");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=110.00,860.85");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=76.85,909.90");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=86.75,880.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=40.97,953.92");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=21.08,853.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=35.50,864.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=172.28,989.52");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=74.93,967.65");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=15.40,950.32");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=125.33,877.00");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=124.99,940.71");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=57.50,869.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=82.44,930.84");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=108.98,976.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=120.32,953.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=79.65,980.67");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=42.01,820.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=145.54,913.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=97.89,810.68");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=74.35,884.63");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=170.23,978.36");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=52.02,970.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=26.02,893.06");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=58.85,885.03");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=33.08,946.91");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=46.82,884.38");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=38.95,903.67");
    }

}

