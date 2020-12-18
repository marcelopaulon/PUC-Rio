
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_5
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=135.24,53.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=106.20,72.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=124.78,45.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=199.34,76.46");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=86.22,152.50");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=115.05,52.67");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=90.24,47.44");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=130.41,81.26");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=164.09,70.90");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=52.56,108.58");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=224.04,24.32");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=175.31,80.15");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=45.09,79.10");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=227.86,124.41");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=182.37,112.58");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=152.61,70.16");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=137.53,158.70");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=113.47,85.75");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=205.29,102.99");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=55.94,163.33");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=218.37,54.37");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=135.53,34.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=71.63,10.65");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=235.06,136.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=149.15,53.70");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=106.20,2.93");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=105.64,56.11");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=84.48,106.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=155.30,147.83");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=74.47,139.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=152.89,18.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=83.47,63.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=180.84,67.00");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=169.47,132.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=40.88,154.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=224.78,88.77");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=110.02,109.19");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=80.73,38.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=190.75,57.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=110.58,132.90");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=172.98,0.96");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=51.80,26.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=127.64,26.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=210.05,90.33");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=42.39,94.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=189.04,35.46");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=119.08,69.25");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=134.60,65.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=187.37,89.51");
    }

}

