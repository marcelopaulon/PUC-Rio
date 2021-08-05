
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_0
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
        @display("p=157.45,118.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=145.75,132.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=168.42,177.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=180.12,163.68");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=90.30,146.77");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=115.95,192.53");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=185.58,150.37");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=201.61,244.39");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=193.32,157.89");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=168.25,145.79");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=169.59,132.77");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=177.62,113.26");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=243.81,213.06");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=128.24,184.37");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=150.94,110.06");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=227.42,83.55");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=155.51,180.74");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=224.01,244.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=193.52,83.00");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=64.86,167.87");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=124.19,172.51");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=123.25,36.81");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=204.93,261.08");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=254.20,139.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=60.38,98.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=146.99,143.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=172.97,78.37");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=157.58,192.12");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=127.33,109.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=60.67,51.37");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=161.64,96.38");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=145.74,100.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=131.30,264.55");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=260.39,200.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=8.48,67.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=115.80,155.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=217.67,175.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=166.09,160.29");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=213.63,127.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=121.28,81.34");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=201.73,178.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=173.66,193.32");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=180.17,254.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=135.94,172.80");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=105.26,56.75");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=182.24,87.87");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=95.37,156.71");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=195.13,168.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=186.97,140.34");
    }

}

