
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_4
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
        @display("p=60.07,86.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=38.12,59.88");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=57.17,69.95");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=23.21,103.74");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=81.17,72.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=129.05,62.95");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=94.37,151.36");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=64.97,130.45");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=42.96,141.79");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=100.33,110.31");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=44.38,37.91");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=68.43,55.47");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=179.69,101.78");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=138.73,124.10");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=141.09,51.04");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=127.78,31.96");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=37.19,23.93");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=48.91,177.86");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=14.08,141.18");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=157.95,63.23");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=113.50,177.71");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=117.94,138.90");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=21.09,131.08");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=35.68,132.98");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=32.51,171.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=83.57,34.55");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=202.77,23.74");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=62.68,103.76");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=129.25,116.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=40.90,85.48");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=67.38,65.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=72.92,96.75");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=10.19,46.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=185.58,81.05");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=80.16,135.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=71.83,169.42");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=44.99,100.12");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=114.94,46.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=4.45,56.23");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=106.68,119.30");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=209.52,66.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=135.58,105.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=16.13,26.14");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=38.92,13.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=2.94,9.04");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=85.16,48.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=85.01,61.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=134.72,145.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=112.51,20.67");
    }

}

