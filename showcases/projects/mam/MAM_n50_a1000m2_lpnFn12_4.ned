
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_4
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
        @display("p=129.97,112.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=160.42,96.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=163.08,82.80");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=200.67,58.13");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=140.52,141.31");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=137.07,104.65");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=163.47,36.45");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=212.67,28.05");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=227.27,116.63");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=91.63,73.05");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=131.30,25.33");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=144.56,120.63");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=183.61,66.98");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=149.84,49.65");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=67.69,106.29");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=118.79,206.01");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=209.00,75.19");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=80.45,116.35");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=182.16,86.55");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=77.93,106.54");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=151.36,129.28");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=194.55,7.48");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=214.01,122.09");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=203.90,34.65");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=114.46,131.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=127.48,129.36");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=139.93,69.20");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=226.08,25.30");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=118.01,27.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=116.52,38.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=41.52,135.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=121.65,80.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=248.76,112.84");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=184.92,26.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=115.77,180.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=189.16,117.98");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=197.37,84.71");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=249.73,90.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=219.00,100.08");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=123.94,142.41");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=166.83,115.77");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=148.30,101.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=136.39,34.19");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=233.56,147.68");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=75.63,132.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=58.03,162.43");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=220.07,175.54");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=151.74,81.52");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=234.51,131.88");
    }

}

