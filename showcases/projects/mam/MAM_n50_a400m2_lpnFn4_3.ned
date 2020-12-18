
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_3
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
        @display("p=95.57,82.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=140.61,3.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=166.52,94.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=122.38,107.71");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=172.79,186.90");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=130.48,165.02");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=148.11,162.30");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=142.83,91.60");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=251.44,214.94");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=191.96,245.71");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=153.30,237.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=68.86,245.77");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=63.32,17.54");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=117.16,122.36");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,13.61");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=68.59,108.81");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=182.21,98.07");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=193.51,184.71");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=120.04,202.50");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=179.59,150.29");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=149.34,150.64");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=288.30,236.06");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=248.10,284.22");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=135.03,232.05");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=75.82,230.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=130.20,46.92");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=76.91,50.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=157.83,4.67");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=123.06,136.01");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=145.97,101.61");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=196.42,133.61");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=169.97,120.80");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=205.78,190.72");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=112.83,161.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=172.65,244.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=201.79,316.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=230.06,228.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=84.17,240.57");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,154.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=36.33,53.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=171.59,15.28");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=106.29,64.46");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=78.79,171.17");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=161.82,207.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=167.65,169.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=146.60,252.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=200.57,57.74");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=238.68,222.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=160.53,268.00");
    }

}

