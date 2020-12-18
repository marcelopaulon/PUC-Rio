
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_6
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
        @display("p=163.79,35.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=177.42,85.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=218.86,50.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=293.72,83.64");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=34.01,96.98");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=153.98,12.72");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=138.66,43.71");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=124.28,34.26");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=330.16,131.78");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=162.51,94.80");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=145.39,33.34");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=111.49,139.07");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=270.62,76.21");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=319.18,73.76");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=9.34,95.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=69.59,8.26");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=122.60,119.85");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=165.32,19.61");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=224.56,96.51");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=93.04,107.31");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=255.94,70.35");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=187.53,59.82");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=168.00,103.38");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=252.39,83.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=82.14,100.31");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=158.79,48.85");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=223.68,2.45");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=256.50,136.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=302.97,97.27");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=158.47,61.00");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=241.39,54.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=129.47,89.83");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=268.44,31.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=318.19,151.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=177.71,153.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=201.53,98.35");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=135.96,17.29");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=224.92,143.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=288.96,137.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=122.85,77.11");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=210.93,5.64");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=186.87,73.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=240.03,68.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=313.78,26.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=74.01,79.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=172.92,42.04");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=129.38,143.23");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=146.30,50.29");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=278.77,30.79");
    }

}

