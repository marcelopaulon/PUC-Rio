
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_3
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
        @display("p=59.25,20.47");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=98.28,14.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=124.23,24.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=120.76,8.44");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=142.34,16.53");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=147.31,90.77");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,109.70");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=179.33,115.13");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=188.99,106.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=179.53,129.76");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=218.06,82.43");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=169.64,51.47");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=81.15,85.85");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=48.58,79.51");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=111.57,14.58");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=67.21,5.64");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=65.31,63.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=103.87,54.25");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=107.40,37.77");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=149.56,129.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=174.37,138.81");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=192.99,132.23");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=180.40,40.04");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=220.57,99.08");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=155.32,40.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=129.73,143.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=27.53,33.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=96.06,3.15");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=72.42,31.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=106.03,89.43");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=175.14,30.34");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=62.81,85.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=134.61,70.86");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=159.54,22.01");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=203.26,22.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=278.24,139.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=248.52,62.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=179.13,76.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=39.18,61.11");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=48.68,34.18");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=74.28,45.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=122.83,87.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=130.89,0.76");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=134.74,35.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=178.30,160.39");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=46.53,116.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=129.99,56.76");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=186.18,151.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=213.93,149.34");
    }

}

