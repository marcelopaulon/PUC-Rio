
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_8
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
        @display("p=75.77,99.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=72.41,155.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=148.75,213.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=108.22,234.28");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=149.29,184.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=170.90,227.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=147.67,254.13");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=161.79,283.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=170.62,327.14");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=179.18,305.37");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=161.34,305.30");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=250.65,291.28");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=122.03,127.14");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=56.71,115.67");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=140.43,158.57");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=88.35,217.99");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=157.08,160.22");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=186.19,267.80");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=139.83,178.87");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=92.59,237.74");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=159.65,225.52");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=186.65,320.51");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=121.52,386.69");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=211.64,307.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=265.87,242.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=5.11,94.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=17.63,164.51");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=86.15,176.08");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=153.76,203.20");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=138.75,266.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=161.40,102.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=127.61,257.10");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=183.56,166.74");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=222.41,236.48");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=258.15,328.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=198.16,302.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=145.67,283.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=165.27,253.53");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=137.01,116.83");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=101.69,157.88");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=60.57,125.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=205.57,221.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=54.72,175.44");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=115.50,222.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=77.99,198.75");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=156.69,271.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=236.37,226.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=144.36,317.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=164.28,348.74");
    }

}

