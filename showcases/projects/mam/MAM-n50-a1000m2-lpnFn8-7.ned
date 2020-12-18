
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-7
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
        @display("p=799.00,6.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=850.32,17.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=949.55,29.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=935.61,23.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=874.60,77.81");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=956.15,69.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=915.95,67.66");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=812.50,11.45");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=869.36,12.12");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=956.77,39.72");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=917.90,17.50");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=862.58,146.24");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=967.12,83.56");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=848.43,65.53");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=822.70,36.54");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=888.32,47.14");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=981.22,48.48");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=940.62,112.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=858.22,105.11");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=942.78,54.41");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=861.57,62.60");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=814.69,83.18");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=893.08,101.14");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=960.71,53.24");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=992.05,46.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=883.08,90.22");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=915.08,139.88");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=923.03,153.08");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=805.68,51.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=802.59,73.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=879.42,66.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=886.86,2.66");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=842.59,97.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=905.21,22.57");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=900.60,79.01");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=784.75,83.48");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=840.50,15.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=967.26,20.27");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=935.48,65.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=788.07,45.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=903.54,47.75");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=917.52,98.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=789.95,70.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=851.02,114.17");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=877.57,30.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=990.44,73.76");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=840.13,145.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=985.22,98.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=888.72,113.52");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=765.40,94.30");
    }

}

