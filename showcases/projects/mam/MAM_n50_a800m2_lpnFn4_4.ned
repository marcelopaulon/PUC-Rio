
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_4
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=112.79,708.27");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=74.05,762.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=40.61,750.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=68.51,686.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=51.54,726.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=18.04,712.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=42.78,687.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=90.65,694.63");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=145.07,762.89");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=70.31,701.05");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=85.33,729.57");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=121.23,727.79");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=91.61,647.27");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=184.34,661.93");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=103.44,767.09");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=9.13,739.51");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=158.69,706.52");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=41.10,717.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=11.90,720.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=22.42,610.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=89.16,706.47");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=129.17,671.99");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=64.71,711.65");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=121.08,745.17");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=114.07,736.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=60.14,621.22");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=175.57,767.92");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=116.63,770.45");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=51.04,794.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=114.27,682.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=23.19,791.37");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=63.90,727.07");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,719.28");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=51.94,639.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=159.06,767.41");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=132.20,689.13");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=65.43,654.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=182.62,649.28");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=150.79,783.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=160.80,716.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=90.89,795.28");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=38.75,737.69");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=85.23,742.79");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=48.26,706.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=37.85,653.00");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=40.35,771.77");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=108.53,723.43");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=141.14,775.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=95.86,731.71");
    }

}

