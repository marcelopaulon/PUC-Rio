
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_3
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
        @display("p=92.49,64.85");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=62.32,118.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=91.85,109.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=20.81,63.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=10.32,56.82");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=33.92,64.21");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=92.09,121.77");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=62.40,17.20");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=92.91,175.37");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=36.74,116.26");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=54.74,153.46");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=14.57,42.38");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=44.64,31.72");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=42.87,132.35");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=101.10,2.23");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=41.01,49.63");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=112.59,102.15");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=30.21,77.74");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=29.61,95.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=23.57,13.39");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=156.50,39.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=89.55,27.98");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=79.81,114.54");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=142.75,119.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=113.85,45.96");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=61.64,65.96");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=69.34,103.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=121.69,77.66");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=86.14,75.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=26.51,45.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=42.43,85.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=8.21,70.61");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=54.46,23.85");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=56.75,75.99");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=66.70,29.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=33.05,1.86");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=139.78,83.46");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=73.54,171.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=71.93,75.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=72.36,16.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=106.95,14.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=180.49,104.31");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=74.32,0.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=81.15,183.72");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=134.44,131.40");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=85.91,8.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=4.71,148.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=124.13,91.55");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=162.48,173.92");
    }

}

