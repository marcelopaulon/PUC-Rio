
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_9
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=41.47,128.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=32.30,164.88");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=53.25,88.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=78.35,130.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=79.33,36.30");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=58.30,39.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=101.03,40.34");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=102.95,23.10");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=117.08,28.94");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=186.85,19.76");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=255.02,16.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=236.00,24.76");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=30.50,121.75");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=74.26,78.94");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=27.01,183.45");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=64.71,83.06");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=31.06,193.01");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=21.65,73.48");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=15.36,38.67");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=84.47,49.85");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=109.77,15.18");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=62.13,22.55");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=153.13,42.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=322.26,29.67");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=309.98,36.99");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=65.77,127.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=88.97,67.92");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=23.98,151.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=126.70,69.82");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=110.35,154.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=73.07,111.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=20.65,117.44");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=3.32,22.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=13.08,26.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=50.25,17.50");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=213.76,37.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=311.87,65.98");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=334.81,16.63");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=119.69,139.89");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=8.50,198.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=105.60,112.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=110.55,63.66");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=136.16,126.62");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=120.19,86.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=38.40,54.62");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=171.55,80.49");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=24.24,18.68");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=177.31,102.80");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=194.22,31.38");
    }

}

