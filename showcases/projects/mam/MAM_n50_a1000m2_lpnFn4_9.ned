
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_9
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
        @display("p=74.56,83.02");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=49.54,122.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=63.14,92.34");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=102.18,64.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=108.16,79.15");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=109.99,121.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=94.30,44.67");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=69.74,69.54");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=92.23,87.31");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=101.98,140.65");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=131.91,117.28");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=112.85,101.97");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=123.97,148.74");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=23.59,107.25");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=39.01,125.22");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=116.44,158.31");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=93.87,77.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=108.06,11.44");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=40.85,76.35");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=97.36,23.08");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=78.09,123.97");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=76.84,112.03");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,166.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=169.35,172.84");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=44.33,167.33");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=94.71,130.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=51.31,84.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=50.16,110.61");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=3.16,61.03");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=162.73,35.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=121.70,79.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=153.70,141.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=87.71,16.49");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=54.46,73.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=125.78,0.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=80.70,195.86");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=149.54,187.69");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=133.90,93.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=62.63,55.47");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=75.63,13.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=19.16,176.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=65.17,20.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=175.14,92.41");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=24.14,76.19");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=90.96,141.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=108.38,37.89");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=16.75,1.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=92.08,106.82");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=137.60,52.18");
    }

}

