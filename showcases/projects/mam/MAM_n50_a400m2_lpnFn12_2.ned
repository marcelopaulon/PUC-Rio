
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_2
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
        @display("p=192.03,103.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=180.28,102.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=185.08,115.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=155.32,111.50");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=151.83,137.77");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=154.14,91.74");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=198.35,31.97");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=173.14,113.89");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=70.16,88.43");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=62.05,144.85");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=216.01,151.45");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=123.05,65.19");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=246.19,93.75");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=162.43,162.65");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=129.34,92.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=266.21,138.66");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=113.52,157.49");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=138.25,186.93");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=113.14,190.09");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=39.96,96.53");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=136.51,133.22");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=162.59,41.95");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=196.23,143.34");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=156.25,153.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=89.36,82.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=197.22,90.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=174.30,197.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=116.98,99.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=207.88,40.18");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=167.76,79.39");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=280.16,124.59");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=176.21,64.83");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=161.34,185.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=139.95,111.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=102.95,136.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=244.64,77.37");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=203.50,121.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=268.89,74.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=135.42,144.36");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=87.94,124.34");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=205.47,62.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=185.94,132.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=177.49,123.39");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=125.92,157.78");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=110.76,90.39");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=97.19,110.65");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=227.42,75.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=229.44,109.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=166.66,103.48");
    }

}

