
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_8
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
        @display("p=113.27,81.97");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=110.83,133.23");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=53.82,84.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=51.49,63.02");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=74.88,140.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=84.79,150.48");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=91.11,93.24");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,56.75");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=120.62,158.88");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=87.08,163.41");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=39.74,113.72");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=57.95,193.23");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=92.61,136.88");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=94.65,111.48");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=155.89,57.38");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=169.37,165.49");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=79.44,127.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=86.77,46.87");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=51.42,44.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=74.24,195.38");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=138.11,128.72");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=182.47,101.57");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=74.32,151.50");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=43.62,125.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=72.69,42.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=7.38,117.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=144.60,158.27");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=153.73,121.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=96.18,65.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=126.49,119.27");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=41.32,151.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=103.49,17.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=56.67,174.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=146.85,228.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=132.69,188.10");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=159.06,99.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=184.57,180.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=139.82,103.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=70.92,58.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,169.83");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=58.88,95.92");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=100.81,164.66");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=124.53,93.90");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=110.68,186.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=152.08,75.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=71.65,99.71");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=87.50,209.26");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=19.06,160.78");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=113.83,115.99");
    }

}

