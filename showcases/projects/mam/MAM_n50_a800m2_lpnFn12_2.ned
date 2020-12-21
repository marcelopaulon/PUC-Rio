
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_2
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
        @display("p=64.94,75.10");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=34.00,75.34");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=89.50,107.49");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=40.65,136.97");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=24.04,90.08");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=77.92,52.71");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=58.50,60.73");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=147.59,46.68");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=14.08,193.11");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=115.18,91.43");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=9.58,154.38");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=76.98,79.31");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=159.59,84.37");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=18.52,178.16");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=117.04,148.34");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=69.73,91.12");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=8.76,50.91");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=80.41,135.26");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=72.75,156.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=64.88,117.85");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=138.74,87.12");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=92.70,51.91");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=108.15,181.88");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=53.51,119.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=135.34,13.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=110.12,68.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=80.51,66.30");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=87.98,36.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=114.52,159.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=155.60,144.11");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=84.35,97.85");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=52.62,89.41");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=163.65,67.16");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=130.55,179.81");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=177.94,90.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=37.47,97.16");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=15.30,75.76");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=113.61,102.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=90.88,172.66");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=148.09,127.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=51.24,74.35");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=40.23,53.26");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=116.22,202.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=11.63,120.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=39.31,147.28");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=63.27,147.15");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=7.16,12.40");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=126.41,111.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=79.17,187.04");
    }

}

