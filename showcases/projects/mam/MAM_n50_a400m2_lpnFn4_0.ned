
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_0
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
        @display("p=108.30,166.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=78.70,176.52");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=91.44,156.11");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=97.09,181.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=14.43,171.56");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=16.31,130.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=0.93,120.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=5.68,143.23");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=49.65,120.23");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=42.49,110.62");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=77.52,194.84");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=37.16,211.18");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=96.33,115.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=163.40,145.45");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=60.02,117.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=174.92,210.76");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=128.47,141.18");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=53.89,140.79");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=53.63,103.80");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=35.22,194.06");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=10.04,156.28");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=53.82,169.48");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=89.11,50.13");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=17.43,146.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=76.02,166.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=181.74,116.47");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=19.64,161.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=119.83,107.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=129.93,230.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=62.05,227.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=78.01,153.59");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=21.01,62.25");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=85.77,114.16");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=16.08,98.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=54.89,58.10");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=88.62,103.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=57.07,187.35");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=4.90,229.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=89.62,84.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=75.67,79.42");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=145.28,242.05");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=135.45,182.88");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=83.45,128.71");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=47.56,209.27");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=0.24,180.92");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=23.32,76.30");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=7.78,206.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=115.25,96.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=53.09,81.80");
    }

}

