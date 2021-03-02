
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_0
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=107.38,74.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=99.67,50.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=58.52,39.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=149.14,54.28");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=122.03,123.27");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=130.05,136.06");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=33.73,17.44");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=75.00,36.20");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=198.29,4.95");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=82.54,133.60");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=160.17,6.01");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=89.48,90.19");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=47.85,38.21");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=155.52,44.01");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=105.10,153.68");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=125.41,55.25");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=93.24,66.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=44.72,28.01");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=170.92,60.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=111.61,171.58");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=122.19,104.29");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=89.08,38.62");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=103.77,36.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=185.97,27.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=89.37,121.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=194.19,82.47");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=25.74,67.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=76.23,66.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=197.78,71.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=109.86,22.08");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=145.68,66.29");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=117.20,12.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=106.32,58.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=200.29,56.40");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=96.31,109.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=128.96,12.67");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=187.46,12.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=120.48,66.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=132.27,31.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=180.85,105.78");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=20.39,43.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=133.23,65.37");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=73.60,25.90");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=151.40,115.53");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=64.68,178.24");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=56.85,28.75");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=161.93,35.76");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=84.87,77.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=62.33,98.60");
    }

}

