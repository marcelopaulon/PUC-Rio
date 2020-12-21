
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_3
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
        @display("p=78.46,57.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=25.93,76.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=66.15,85.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=106.96,34.23");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=91.29,127.13");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=139.42,29.19");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=48.41,18.41");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=41.81,167.96");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=176.57,8.37");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=147.17,85.23");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=68.94,51.23");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=20.04,173.66");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=7.13,49.96");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=93.72,12.70");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=57.78,119.58");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=105.14,121.94");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=59.98,73.66");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=65.61,95.54");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=117.37,36.09");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=109.37,132.92");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=166.57,66.81");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=25.54,48.64");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=3.34,71.47");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=95.86,40.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=126.56,128.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=147.56,103.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=2.28,136.12");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=8.35,29.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=91.76,72.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=57.49,130.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=49.99,8.17");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=108.58,76.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=75.94,26.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=106.00,12.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=3.25,109.54");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=64.23,24.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=105.95,110.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=3.87,19.23");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=72.83,104.07");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=160.76,52.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=129.31,84.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=99.22,27.11");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=33.93,55.22");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=113.67,21.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=100.87,89.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=72.81,41.23");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=19.04,21.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=129.44,161.51");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=181.38,25.33");
    }

}

