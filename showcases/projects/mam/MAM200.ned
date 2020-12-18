
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM200
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
        @display("p=360.00,58.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=352.73,37.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=340.93,96.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=293.47,118.65");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=275.44,144.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=257.00,84.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=291.87,85.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=226.01,45.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=249.60,111.90");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=244.24,155.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=232.57,96.49");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=234.06,189.25");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=187.82,274.86");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=290.29,128.75");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=373.73,28.68");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=352.09,71.27");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=320.66,99.68");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=298.67,160.69");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=171.28,94.26");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=379.30,73.46");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=186.30,80.61");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=254.23,155.36");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=153.20,149.79");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=231.73,68.55");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=272.11,135.79");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=344.25,14.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=281.94,26.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=351.25,125.08");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=307.17,210.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=218.97,165.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=247.58,95.56");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=199.73,65.32");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=280.33,53.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=253.64,43.95");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=203.72,141.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=280.00,92.90");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=253.82,250.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=209.02,197.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=371.28,75.01");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=332.02,102.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=302.01,144.62");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=219.50,138.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=313.75,138.90");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=286.08,152.33");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=244.00,96.33");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=192.63,35.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=164.29,67.64");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=212.62,156.71");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=296.79,72.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=275.32,113.28");
    }

}

