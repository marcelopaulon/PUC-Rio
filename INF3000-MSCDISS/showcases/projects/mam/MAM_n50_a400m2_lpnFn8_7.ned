
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_7
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=97.29,121.90");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=29.78,104.38");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=14.45,82.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=14.36,40.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=20.84,9.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=42.56,16.00");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=156.51,35.07");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=175.48,102.17");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=116.68,109.45");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=2.34,110.24");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=56.79,114.05");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=96.00,28.81");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=10.74,15.07");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=118.08,193.71");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=109.78,172.51");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=65.07,97.48");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=23.07,128.75");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=45.17,66.11");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=39.30,51.34");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=0.11,87.66");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=115.97,123.52");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=67.48,29.53");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=48.39,85.68");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=47.49,154.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=32.48,63.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=46.99,30.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=32.52,36.56");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=122.40,86.06");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=104.06,133.09");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=32.77,172.79");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=88.97,88.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=102.28,6.18");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=8.10,51.07");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=61.76,67.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=132.29,112.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=110.43,182.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=27.79,152.40");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=44.72,42.23");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=88.91,69.62");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=52.26,0.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=68.81,4.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=122.17,34.26");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=47.17,133.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=65.13,197.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=99.02,40.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=25.70,94.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=13.53,61.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=58.24,13.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=39.99,123.07");
    }

}

