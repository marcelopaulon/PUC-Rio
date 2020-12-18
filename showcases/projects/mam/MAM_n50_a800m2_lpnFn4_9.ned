
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_9
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
        @display("p=123.95,134.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=139.30,139.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=97.26,117.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=41.04,54.70");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=54.48,124.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=20.63,209.61");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=83.09,222.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=38.98,307.97");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=26.36,319.13");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=65.16,289.72");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=84.17,276.64");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=68.88,330.37");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=82.97,81.10");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=125.63,77.23");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=48.93,160.15");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=112.13,111.99");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=11.88,137.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=21.44,161.63");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=1.36,202.95");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=71.31,218.55");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=57.49,262.83");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=28.40,297.99");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=107.12,267.88");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=93.16,334.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=114.92,365.27");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=133.82,64.05");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=96.15,214.59");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=158.41,123.35");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=158.07,169.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=59.64,44.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=121.79,160.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=59.26,190.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=117.42,269.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=59.25,249.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=2.74,317.69");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=119.41,247.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=59.92,237.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=85.15,340.75");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=24.25,68.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=84.21,178.15");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=173.14,176.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=149.42,180.90");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=42.13,111.36");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=67.53,128.64");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=13.13,233.90");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=135.23,210.05");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=6.97,306.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=76.25,302.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=23.43,328.70");
    }

}

