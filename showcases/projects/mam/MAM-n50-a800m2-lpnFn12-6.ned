
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-6
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
        @display("p=670.00,127.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=737.33,176.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=669.89,171.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=655.78,97.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=689.57,141.28");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=713.84,168.52");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=711.30,102.70");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=710.39,215.17");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=634.22,105.05");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=641.88,155.84");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=753.06,126.58");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=684.02,166.92");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=631.52,90.20");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=679.39,102.77");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=705.69,82.42");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=619.69,137.48");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=741.50,76.26");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=609.19,146.08");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=669.75,19.51");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=746.26,103.35");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=606.89,53.50");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=727.60,142.20");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=757.28,150.32");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=670.32,86.21");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=659.12,142.82");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=659.25,107.91");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=761.73,215.77");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=589.91,168.93");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=681.15,91.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=705.17,155.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=764.31,97.24");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=754.69,173.94");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=667.53,156.11");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=568.44,111.83");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=768.66,153.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=725.77,130.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=796.01,140.45");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=686.87,220.26");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=724.70,156.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=629.36,121.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=660.04,32.20");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=767.56,172.05");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=651.90,169.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=607.84,176.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=673.66,137.96");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=591.88,140.16");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=783.82,197.75");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=647.83,192.70");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=648.22,132.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=685.50,235.84");
    }

}

