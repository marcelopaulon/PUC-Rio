
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_6
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
        @display("p=152.01,103.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=137.18,106.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=95.17,114.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=64.48,178.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=117.02,155.04");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=106.84,149.59");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=102.71,65.21");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=68.91,110.07");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=115.03,61.07");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=91.01,187.42");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=56.38,126.78");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=112.50,182.99");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=92.83,166.30");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=111.23,124.85");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=174.99,88.97");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=194.55,82.08");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=74.80,137.63");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=50.20,162.24");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=79.51,204.08");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=35.33,154.00");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=88.84,88.68");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=194.67,71.81");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=62.05,59.54");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=147.42,31.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=1.18,255.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=158.93,241.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=153.54,168.54");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=41.83,104.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=208.94,61.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=212.29,157.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=122.49,72.18");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=150.57,149.96");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=78.08,153.57");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=18.35,113.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=172.54,142.55");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=180.13,78.30");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=171.68,161.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=93.40,151.49");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=3.86,195.43");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=136.25,244.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=23.26,149.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=84.89,139.32");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=185.95,103.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=77.95,177.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=39.86,179.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=45.71,222.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=64.08,72.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=163.33,155.30");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=36.10,74.81");
    }

}

