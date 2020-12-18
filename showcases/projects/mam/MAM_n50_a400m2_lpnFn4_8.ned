
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_8
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
        @display("p=80.36,92.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=167.48,55.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=149.07,58.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=135.53,70.40");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=47.76,77.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=61.39,17.65");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=107.73,31.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=55.81,35.22");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=128.91,27.67");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=140.06,3.06");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=179.44,19.09");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=205.33,81.29");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=73.98,37.49");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=116.72,92.79");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=223.35,37.12");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=209.93,11.94");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=130.13,1.70");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=1.94,30.25");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,43.87");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=129.43,125.53");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=74.65,26.60");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=169.81,24.77");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=142.52,24.60");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=86.64,24.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=245.43,69.26");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=159.68,65.43");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=108.51,47.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=193.89,134.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=155.08,95.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=123.80,101.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=93.25,112.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=45.77,12.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=183.98,78.62");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=13.70,81.98");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=128.28,61.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=209.46,41.82");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=240.28,90.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=252.12,33.57");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=11.41,108.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=77.48,108.66");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=186.09,33.84");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=157.57,113.39");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=157.18,48.64");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=7.12,94.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=32.62,69.39");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=62.06,58.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=8.60,8.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=76.23,73.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=89.09,77.58");
    }

}

