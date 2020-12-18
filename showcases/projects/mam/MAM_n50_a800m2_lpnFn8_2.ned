
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_2
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
        @display("p=71.27,148.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=144.42,185.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=138.47,271.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=143.07,332.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=157.11,377.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=133.78,355.44");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=75.06,25.65");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=33.61,206.78");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=133.39,176.24");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=212.51,267.33");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=168.57,397.89");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=143.17,345.24");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=165.00,316.27");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=27.77,37.46");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=10.42,97.79");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=171.34,247.85");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=116.06,269.39");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=153.19,336.31");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=251.56,363.65");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=133.69,376.07");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=105.27,5.84");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=60.57,191.97");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=118.53,186.60");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=218.69,257.90");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=154.00,365.33");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=122.95,470.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=101.67,385.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=165.02,89.77");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=60.28,102.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=190.99,159.19");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=203.02,207.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=93.66,306.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=166.01,372.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=181.81,388.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=134.97,14.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=80.41,224.76");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=179.56,192.51");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=222.14,325.13");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=66.41,389.83");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=186.36,352.09");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=152.75,392.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=42.22,76.38");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=84.45,129.33");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=124.77,211.21");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=146.40,215.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=178.01,319.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=189.52,404.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=151.18,280.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=115.87,69.16");
    }

}

