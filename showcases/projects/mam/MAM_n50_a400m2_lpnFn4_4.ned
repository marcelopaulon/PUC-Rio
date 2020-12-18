
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_4
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
        @display("p=146.44,106.90");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=130.44,105.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=126.38,71.80");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=197.76,59.06");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=193.68,73.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=213.18,71.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=182.40,164.70");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=197.41,231.29");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=213.34,224.44");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=259.16,225.13");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=179.52,254.49");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=121.07,249.81");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=88.42,85.90");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=152.02,28.51");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=117.02,63.82");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=92.28,111.30");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=158.13,84.12");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=187.05,12.41");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=281.70,73.87");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=232.85,129.67");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=120.00,201.03");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=147.50,260.25");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=187.40,220.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=187.46,247.64");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=138.93,236.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=98.97,86.72");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=126.62,115.37");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=147.44,191.40");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=82.79,145.84");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=266.75,82.24");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=288.76,53.97");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=242.94,95.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=146.55,163.49");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=236.20,244.12");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=282.11,214.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=260.17,246.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=198.97,245.72");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,264.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=186.60,149.84");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=106.99,155.92");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=116.13,129.05");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=163.03,103.15");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=241.03,9.45");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=137.49,81.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=223.63,74.40");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=209.02,115.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=134.34,304.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=142.26,274.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=255.56,199.72");
    }

}

