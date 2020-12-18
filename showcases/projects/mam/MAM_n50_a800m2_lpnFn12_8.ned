
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_8
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
        @display("p=100.33,711.67");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=90.81,730.72");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=83.95,763.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=60.36,771.80");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=134.15,629.53");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=41.99,741.84");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=76.82,652.99");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=105.12,778.22");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=48.57,785.94");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=74.95,719.90");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=118.13,700.58");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=129.91,718.73");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=29.21,786.44");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=8.56,775.44");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=172.50,661.42");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=124.76,754.64");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=155.71,714.89");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=16.39,694.38");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=72.08,778.61");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=102.41,732.11");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=25.69,675.65");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=63.78,732.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=117.37,715.91");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=92.31,746.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=113.28,643.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=68.43,693.85");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=154.15,693.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=69.63,760.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=22.06,756.68");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=84.14,704.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=138.29,771.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=40.21,689.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=107.29,689.50");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=95.80,762.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=85.52,676.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=135.41,647.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=161.72,738.27");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=31.30,705.39");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=81.49,797.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=98.51,796.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=95.59,619.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=138.88,703.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=37.46,774.51");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=80.82,744.82");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=29.37,633.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=155.63,783.94");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=110.95,756.19");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=63.14,786.57");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=10.32,794.68");
    }

}

