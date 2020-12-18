
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_1
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=101.91,753.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=57.39,737.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=111.93,793.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=152.52,729.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=173.52,750.72");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=156.47,763.97");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=202.71,710.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=265.52,713.22");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=246.46,744.50");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=251.97,717.30");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=228.61,797.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=242.23,759.93");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=50.02,671.91");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=180.37,729.30");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=78.16,671.48");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=143.11,749.31");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=147.99,702.56");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=167.84,778.18");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=108.16,686.31");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=251.22,703.40");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=345.92,700.52");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=300.44,663.17");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=306.06,769.93");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=201.71,784.64");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=243.15,770.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=123.10,668.45");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=111.40,772.85");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=41.38,706.37");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=127.81,786.55");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=155.14,677.00");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=178.41,707.38");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=136.68,766.57");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=185.68,742.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=288.75,620.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=227.63,712.37");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=293.01,741.43");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=285.16,798.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=224.25,751.22");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=128.28,653.66");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=52.18,751.20");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=121.98,708.18");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=187.24,753.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=139.01,693.06");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=94.13,779.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=156.81,749.36");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=257.24,661.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=240.97,729.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=234.43,656.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=332.87,722.99");
    }

}

