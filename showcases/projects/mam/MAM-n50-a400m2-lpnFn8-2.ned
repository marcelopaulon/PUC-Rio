
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-2
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
        @display("p=40.00,240.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=101.88,240.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=153.11,316.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=102.80,348.39");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=74.78,391.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=68.07,373.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=91.50,357.27");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=56.07,150.50");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=105.57,205.09");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=130.11,343.99");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=125.44,380.08");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=152.17,370.10");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=77.69,369.27");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=44.85,286.35");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=3.86,222.56");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=126.96,218.94");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=195.87,293.83");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=83.10,307.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=75.99,380.10");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=10.52,397.25");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=100.74,367.84");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=75.05,174.32");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=141.44,319.05");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=244.99,317.66");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=97.91,336.60");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=65.79,383.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=128.64,391.96");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=78.60,338.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=71.50,261.86");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=119.08,262.49");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=116.47,304.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=74.28,323.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=87.97,372.75");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=31.27,332.01");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=174.67,373.23");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=134.49,252.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=101.94,259.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=219.81,329.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=112.72,319.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=7.07,341.71");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=131.90,325.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=49.31,377.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=60.49,295.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=165.20,305.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=124.25,281.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=44.99,332.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=32.05,306.09");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=85.65,317.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=183.46,325.42");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=59.17,195.90");
    }

}

