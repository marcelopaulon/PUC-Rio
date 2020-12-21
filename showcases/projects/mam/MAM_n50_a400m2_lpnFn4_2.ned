
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_2
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
        @display("p=133.06,143.70");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=43.98,169.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=69.78,159.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=107.12,110.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=124.60,102.30");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=70.87,106.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=54.31,37.31");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=97.98,3.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=118.49,51.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=76.52,36.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=81.15,135.47");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=52.84,107.04");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=65.81,41.25");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=161.49,137.60");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=48.30,150.40");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=11.19,134.69");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=87.24,124.45");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=161.75,120.39");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=9.01,103.97");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=55.57,136.09");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=54.67,27.13");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=153.11,32.17");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=65.75,7.97");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=79.28,113.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=104.19,87.68");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=60.11,152.83");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=95.41,212.15");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=60.13,181.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=27.25,198.36");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=113.34,29.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=219.21,112.72");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=51.82,90.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=43.77,63.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=57.71,65.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=111.40,139.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=124.07,121.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=144.37,67.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=68.12,116.47");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=76.19,57.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=138.40,153.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=88.07,187.19");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=89.25,166.66");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=128.40,86.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=86.89,76.05");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=29.77,76.90");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=23.42,37.19");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=35.83,6.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=147.97,53.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=88.47,12.97");
    }

}

