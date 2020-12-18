
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-0
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
        @display("p=186.00,65.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=152.20,19.85");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=131.40,24.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=143.82,87.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=149.26,75.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=133.59,114.93");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=122.38,103.44");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=130.94,132.52");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=229.31,49.40");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=194.04,9.47");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=83.62,59.31");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=176.89,93.33");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=118.57,129.13");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=110.27,153.64");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=186.11,32.83");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=116.04,10.24");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=163.55,95.80");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=170.42,69.20");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=165.03,52.38");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=50.28,124.38");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=93.85,24.70");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=134.11,99.40");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=78.35,20.72");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=114.87,49.56");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=61.02,36.68");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=119.15,70.28");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=78.10,130.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=169.01,185.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=239.75,117.77");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=162.32,40.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=93.48,4.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=188.04,107.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=165.85,30.98");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=146.22,122.49");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=186.23,160.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=206.35,50.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=207.89,79.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=100.53,117.57");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=151.37,135.74");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=57.78,63.05");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=135.97,154.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=102.22,83.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=172.60,162.78");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=148.08,38.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=161.70,1.25");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=78.19,99.02");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=165.47,147.45");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=156.26,168.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=161.06,75.63");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=203.13,138.29");
    }

}

