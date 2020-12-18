
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-2
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
        @display("p=238.00,13.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=236.28,2.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=204.61,5.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=221.75,45.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=208.81,46.10");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=270.69,90.12");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=179.50,53.30");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=190.09,50.32");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=250.87,112.37");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=209.98,105.98");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=228.15,26.88");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=195.19,73.54");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=220.17,1.72");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=208.43,57.16");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=219.98,58.42");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=240.13,60.95");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=232.37,39.04");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=190.84,100.15");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=186.81,32.31");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=178.82,21.58");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=257.92,43.18");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=279.01,52.20");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=302.04,25.60");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=224.42,94.69");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=178.91,67.58");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=221.15,81.52");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=246.80,36.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=132.26,26.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=283.12,27.71");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=173.76,82.04");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=311.11,44.61");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=246.82,1.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=236.85,76.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=126.81,52.66");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=117.53,17.82");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=271.90,13.11");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=208.78,26.40");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=184.51,5.31");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=316.81,29.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=132.76,105.17");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=144.04,37.88");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=262.02,16.57");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=134.72,7.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=165.77,23.22");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=152.54,126.67");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=330.69,17.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=250.35,13.68");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=193.14,15.28");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=224.77,121.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=268.81,112.19");
    }

}

