
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_4
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=128.72,125.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=117.03,128.34");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=140.67,205.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=147.78,139.42");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=147.06,111.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=83.16,112.40");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=121.14,86.03");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=109.04,114.09");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=138.12,74.12");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=164.82,174.24");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=173.55,208.95");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=138.83,150.69");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=124.00,165.51");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=157.91,138.23");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=53.91,114.88");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=134.59,43.00");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=157.77,242.03");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=130.49,226.47");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=122.46,65.53");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=74.98,95.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=113.62,170.22");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=105.31,184.09");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=143.89,127.35");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=188.14,152.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=140.20,188.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=94.35,186.58");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=7.46,124.06");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=122.21,8.72");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=87.43,175.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=86.49,36.95");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=221.61,223.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=82.44,66.36");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=101.10,74.96");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=56.89,194.05");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=129.49,93.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=122.16,110.92");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=121.06,180.68");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=102.18,121.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=171.15,135.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=104.79,142.51");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=66.88,109.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=60.85,141.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=89.80,148.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=64.69,127.86");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=142.93,301.28");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=113.75,208.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=163.18,147.92");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,53.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=186.95,138.78");
    }

}

