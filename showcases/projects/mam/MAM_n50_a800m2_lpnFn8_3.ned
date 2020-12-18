
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_3
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=74.17,686.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=149.86,746.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=171.88,799.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=136.42,706.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=179.26,693.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=156.91,730.50");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=126.80,660.92");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=157.00,719.03");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=141.49,725.34");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=153.01,774.04");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=203.28,714.21");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=147.21,668.39");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=129.76,763.08");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=85.69,660.88");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=151.77,634.70");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=124.11,725.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=144.93,796.63");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=198.37,745.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=190.83,712.34");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.17,711.45");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=86.94,687.97");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=52.47,719.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=140.02,766.55");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=255.10,773.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=93.12,731.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=177.77,683.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=67.87,762.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=26.48,679.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=149.20,691.08");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=95.25,787.07");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=163.05,767.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=48.35,707.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=186.46,747.65");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=210.06,745.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=184.18,720.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=55.75,699.25");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=204.87,755.62");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=133.46,784.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=92.82,755.50");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=173.59,672.51");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=169.15,727.46");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=38.60,665.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=48.39,673.44");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=118.51,743.97");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=191.09,781.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=183.65,763.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=170.73,651.80");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=203.90,670.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=136.40,656.53");
    }

}

