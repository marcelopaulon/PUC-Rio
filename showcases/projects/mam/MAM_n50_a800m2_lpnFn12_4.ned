
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_4
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
        @display("p=57.78,733.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=71.31,716.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=27.94,694.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=19.53,705.48");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=176.74,650.90");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=59.74,790.28");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=62.72,703.39");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=17.49,689.42");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=42.91,719.50");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=3.20,694.19");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=139.60,767.51");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=105.06,717.89");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=85.01,641.49");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=35.76,768.57");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=128.60,662.92");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=124.05,687.44");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=5.26,714.21");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=7.24,683.66");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=88.45,655.47");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=92.10,690.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=50.17,741.20");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=58.20,650.65");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=39.07,729.49");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=26.67,670.17");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=179.91,744.35");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=150.74,701.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=162.94,713.95");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=48.54,763.00");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=57.35,769.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=73.01,658.83");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=52.35,710.40");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=66.63,741.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=40.09,692.57");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=6.19,747.40");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=4.53,671.33");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=34.21,748.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=85.39,714.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=28.02,726.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=0.85,734.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=147.75,630.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=127.62,793.83");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=64.00,680.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=14.13,661.64");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=19.34,720.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=76.97,750.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=120.79,760.30");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=71.81,728.96");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=7.94,640.48");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=60.92,616.50");
    }

}

