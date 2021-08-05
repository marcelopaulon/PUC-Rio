
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_8
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
        @display("p=137.16,134.36");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=220.95,112.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=251.64,44.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=196.70,12.26");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=127.18,112.11");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=104.22,151.36");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=239.81,122.94");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=246.89,19.58");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=205.04,32.10");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=152.50,130.28");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=120.09,119.44");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=218.68,35.77");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=272.98,80.15");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=156.92,79.74");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=172.71,148.58");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=180.58,167.73");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=245.19,57.78");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=305.24,43.91");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=229.70,2.18");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=133.01,101.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=98.92,211.48");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=264.49,53.61");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=292.51,0.20");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=145.82,12.76");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=63.87,56.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=157.60,110.55");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=234.64,176.90");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=342.99,51.70");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=135.15,4.27");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=88.22,89.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=128.04,153.91");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=224.44,51.00");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=186.11,15.86");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=153.19,94.38");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=7.22,107.09");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=137.13,170.46");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=288.45,153.56");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=281.41,70.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=208.35,91.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=47.16,102.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=116.03,205.26");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=252.29,157.53");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=221.75,64.45");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=283.67,26.59");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=123.17,74.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=108.61,169.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=228.99,136.60");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=261.84,106.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=234.58,82.24");
    }

}

