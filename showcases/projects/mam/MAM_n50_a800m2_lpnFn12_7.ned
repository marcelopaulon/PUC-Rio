
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_7
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
        @display("p=107.35,81.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=121.14,78.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=104.90,28.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=77.75,84.94");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=103.22,116.28");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=117.23,170.43");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=174.58,100.38");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=70.07,72.22");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=101.63,56.67");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=81.94,47.35");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=119.74,54.52");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=88.40,57.86");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=66.93,109.79");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=46.61,101.47");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=140.87,80.44");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=192.37,125.92");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=57.00,2.57");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=113.48,63.17");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=41.75,48.27");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=42.77,171.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=150.54,51.97");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=156.60,128.64");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=147.51,37.89");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=27.01,135.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=112.68,100.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=129.18,66.53");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=123.93,125.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=125.06,14.64");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=41.86,17.46");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=155.29,157.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=130.00,170.48");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=147.38,132.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,41.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=81.05,145.25");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=116.00,119.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=92.13,109.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=153.61,79.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=88.91,27.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=145.54,95.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=42.24,156.30");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=86.23,73.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=169.86,50.46");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=178.87,44.49");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=47.41,87.68");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=76.32,96.11");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=201.94,89.72");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=156.82,98.53");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=112.67,20.06");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=102.60,157.06");
    }

}

