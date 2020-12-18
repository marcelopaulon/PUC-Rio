
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_4
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=51.36,105.29");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=23.97,119.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=35.26,91.85");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=1.03,89.09");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=49.11,127.93");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=98.22,161.24");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=98.05,185.22");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=17.32,195.12");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=58.06,86.60");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=84.82,28.04");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=40.65,115.74");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=69.06,101.05");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=142.80,120.41");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=98.63,40.04");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=54.07,50.43");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=94.00,116.40");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=43.24,54.99");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=8.57,185.01");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=65.47,183.62");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=91.93,61.78");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=143.47,108.54");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=51.83,161.79");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=85.17,196.57");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=23.45,144.78");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=19.13,171.82");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=106.08,73.91");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=48.06,201.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=67.95,130.58");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=130.76,93.17");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=47.30,64.70");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=81.77,50.44");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=21.60,12.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=22.26,92.12");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=72.42,197.13");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=125.02,177.32");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=109.26,84.27");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=45.95,139.18");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=29.91,103.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=31.83,80.63");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=122.30,87.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=64.24,69.53");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=113.66,95.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=99.30,27.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=64.23,112.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=27.89,135.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=90.20,96.53");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=55.11,177.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=108.15,126.52");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=19.90,55.75");
    }

}

