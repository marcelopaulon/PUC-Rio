
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_5
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
        @display("p=84.38,91.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=99.74,39.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,3.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=74.08,2.76");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=130.74,124.26");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=154.14,58.25");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=137.22,24.32");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=22.24,19.55");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=58.43,15.70");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=102.30,147.64");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=26.09,41.11");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=78.65,54.07");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=47.61,0.01");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=62.15,51.16");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=110.04,14.65");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=52.69,45.86");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=96.78,28.06");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=86.46,64.45");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=139.19,3.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=166.90,64.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=10.81,127.47");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=109.27,69.57");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=39.88,22.14");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=61.86,37.45");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=85.37,156.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=72.77,30.03");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=152.66,118.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=3.37,17.54");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=88.77,14.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=110.20,91.18");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=93.65,86.36");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=149.15,30.62");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=71.94,100.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=7.33,46.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=111.97,121.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=50.92,104.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=122.32,74.18");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=43.74,76.83");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=15.95,30.95");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=119.82,181.44");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=144.73,110.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=27.91,84.40");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=30.95,7.70");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=14.88,8.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=66.17,113.89");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=67.12,171.25");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=87.51,48.70");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=47.51,59.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=11.61,60.62");
    }

}

