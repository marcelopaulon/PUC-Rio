
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_8
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=66.23,50.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=52.97,79.94");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=10.41,74.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=28.33,80.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=43.11,81.99");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=26.67,93.82");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=46.59,91.69");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=119.95,151.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=145.86,134.81");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=97.94,69.66");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=39.79,4.88");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=14.58,28.07");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=127.06,53.85");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=78.38,56.65");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=76.00,95.34");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=14.47,85.60");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=45.96,116.48");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=17.39,131.59");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=35.76,25.82");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=75.31,138.87");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=84.63,226.52");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=170.20,154.26");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=152.76,18.61");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=55.41,19.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=2.22,64.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=147.53,70.95");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=77.66,2.93");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=30.98,60.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=25.90,48.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=32.74,37.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=13.69,177.28");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=36.34,183.89");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=29.81,107.30");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=109.66,157.98");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=162.53,106.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=85.17,141.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=115.62,40.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=92.24,47.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=134.82,43.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=87.63,92.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=2.57,47.84");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=15.24,48.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=45.33,102.87");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=85.96,69.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=49.43,133.76");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=138.58,119.64");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=97.26,113.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=177.31,183.45");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=115.36,82.15");
    }

}

