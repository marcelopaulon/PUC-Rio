
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_9
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
        @display("p=64.20,122.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=32.34,188.23");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=12.19,93.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=34.34,39.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=42.14,102.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=14.18,16.77");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=27.99,152.47");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=11.51,39.68");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=60.61,219.71");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=23.68,170.42");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=75.20,61.93");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=43.10,174.00");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=10.98,56.15");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=2.81,115.84");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=58.46,134.07");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=79.32,222.40");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=39.46,125.55");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=59.15,3.74");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=78.25,36.94");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=24.50,44.94");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=70.98,87.33");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=33.53,136.06");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=5.48,182.06");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=17.36,126.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=84.88,82.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=47.71,87.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=27.68,18.00");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=150.05,50.62");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=20.24,99.70");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=24.98,180.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=68.61,137.11");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=129.73,54.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=103.96,150.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=35.16,113.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=137.86,38.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=156.40,107.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=101.03,181.63");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=0.11,8.51");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=26.64,77.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=41.18,67.44");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=32.15,7.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=122.45,26.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=66.19,102.86");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=12.24,169.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=32.45,28.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=68.92,43.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=14.41,77.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=90.72,28.82");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=89.77,171.87");
    }

}

