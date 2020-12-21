
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=90.23,91.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=69.28,114.65");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=140.02,142.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=142.08,103.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=116.44,159.06");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=63.21,76.54");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=58.18,107.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=38.38,120.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=18.53,112.23");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=42.68,192.99");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=46.43,289.71");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=29.22,284.48");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=106.42,49.39");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=128.85,47.88");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=85.16,109.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=156.36,218.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=198.05,43.33");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=175.95,97.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=59.66,93.27");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=42.80,33.83");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=4.37,184.02");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=29.40,28.19");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=8.07,127.86");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=83.97,324.46");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=55.19,319.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,72.21");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=107.10,189.77");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=91.58,36.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=168.03,223.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=203.64,84.08");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=67.00,134.25");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=115.02,129.78");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=58.59,159.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=22.95,128.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=74.04,174.09");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=36.25,174.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=24.00,220.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=111.29,227.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=105.34,158.91");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=116.86,96.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=71.54,101.13");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=206.98,133.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=154.49,164.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=125.71,105.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=52.49,82.96");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=138.09,114.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=23.37,87.96");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=23.01,141.44");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=51.79,219.54");
    }

}

