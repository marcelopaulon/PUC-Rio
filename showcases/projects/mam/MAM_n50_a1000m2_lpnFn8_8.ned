
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_8
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
        @display("p=115.12,89.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=128.27,82.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=126.40,95.08");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=181.70,112.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=172.66,59.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=167.02,42.33");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=90.24,185.70");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=48.60,41.36");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=143.79,27.88");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=217.92,89.61");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=190.80,180.93");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=185.47,69.21");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=127.78,44.58");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=188.03,137.04");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=117.65,120.14");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=95.17,19.00");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=126.23,108.23");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=109.01,138.32");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=124.56,14.16");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=233.18,53.79");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=76.43,16.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=105.30,76.47");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=133.16,130.77");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=166.19,111.78");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=216.47,190.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=182.21,79.07");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=152.30,67.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=18.24,132.51");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=159.19,167.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=155.32,116.92");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=107.84,48.28");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=198.69,60.98");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=167.72,98.59");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=105.90,35.75");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=65.56,46.46");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=198.73,138.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=119.04,37.00");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=58.68,91.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=150.29,98.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=209.15,129.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=164.66,75.19");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=115.18,4.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=38.47,124.06");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=121.48,61.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=134.25,187.61");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=92.12,70.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=171.49,15.74");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=153.73,56.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=12.79,81.24");
    }

}

