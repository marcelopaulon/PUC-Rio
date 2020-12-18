
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_1
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
        @display("p=35.63,144.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=26.13,177.16");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=16.87,162.91");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=62.67,222.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=120.81,275.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=113.00,282.73");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=60.09,171.86");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=24.41,215.31");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=101.17,134.66");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=44.77,209.56");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=67.03,238.59");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=126.73,262.85");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=115.82,310.46");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=86.19,64.35");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=34.97,66.00");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=75.64,254.53");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=66.21,137.66");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=48.72,227.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=80.71,289.37");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=96.21,318.33");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=77.07,110.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=44.91,127.95");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=64.83,206.07");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=91.74,158.13");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=49.84,268.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=115.08,366.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=73.12,270.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=61.95,21.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=13.79,137.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=22.26,186.65");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=29.08,100.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=69.98,154.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=137.12,254.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=130.02,311.60");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=166.37,173.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=43.21,152.73");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=92.53,107.66");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=3.48,164.06");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=49.72,279.04");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=136.86,291.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=107.00,190.81");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=180.95,122.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=8.35,115.91");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=96.73,146.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=1.06,207.02");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=26.92,277.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=159.45,297.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=58.28,348.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=154.85,92.18");
    }

}

