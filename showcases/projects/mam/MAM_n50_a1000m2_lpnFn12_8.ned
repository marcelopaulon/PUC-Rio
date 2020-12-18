
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_8
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
        @display("p=96.66,68.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=170.11,41.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=159.37,6.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=212.48,49.40");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=139.79,90.69");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=19.27,33.29");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=170.30,66.36");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=171.26,6.05");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=278.72,105.35");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=142.44,16.94");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=140.46,1.36");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=150.14,54.48");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=68.32,2.82");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=280.22,69.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=173.66,117.19");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=113.80,74.99");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=151.96,37.57");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=246.09,16.25");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=208.14,72.35");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=131.38,149.12");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=85.36,113.87");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=188.55,65.61");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=166.69,22.29");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=258.17,90.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=107.11,90.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=98.01,39.93");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=131.50,56.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=186.50,7.61");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=155.72,129.49");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=126.95,113.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=154.21,90.95");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=207.24,31.18");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=196.72,44.71");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=233.91,82.99");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=180.74,129.46");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=90.10,88.17");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=204.48,102.58");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=128.99,24.06");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=233.86,107.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=117.67,108.22");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=98.49,164.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=152.94,74.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=244.19,31.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=145.97,27.59");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=70.40,84.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=54.49,7.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=205.48,114.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=140.16,37.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=243.65,63.85");
    }

}

