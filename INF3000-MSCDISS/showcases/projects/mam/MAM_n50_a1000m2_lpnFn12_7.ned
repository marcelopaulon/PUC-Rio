
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_7
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=138.39,144.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=104.14,56.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=152.61,12.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=138.25,87.02");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=108.43,85.22");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=42.67,124.75");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=67.26,84.85");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=204.56,10.06");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=148.62,69.10");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=180.78,90.69");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=56.94,105.55");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=144.65,47.53");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=165.38,22.56");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=58.78,71.87");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=59.89,115.87");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=200.12,128.28");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=54.05,138.44");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=54.86,34.00");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=165.84,106.75");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=6.72,133.21");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=149.94,82.12");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=179.92,112.45");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=71.06,4.65");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=182.00,135.89");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=110.45,195.73");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=154.72,133.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=191.55,69.68");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=70.25,35.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=135.07,168.83");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=123.70,141.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=157.23,89.77");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=125.75,53.12");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=151.37,29.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=130.22,115.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=84.13,114.20");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=190.16,203.81");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=134.17,68.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=122.71,42.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=157.98,65.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=119.61,170.95");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=180.07,54.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=170.00,0.42");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=115.68,51.25");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=200.48,139.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=100.98,128.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,113.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=27.35,60.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=217.08,53.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=212.44,87.79");
    }

}

