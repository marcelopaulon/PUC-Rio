
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_5
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=130.20,282.03");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=176.16,285.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=173.37,252.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=75.59,267.49");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=54.48,241.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=40.20,222.58");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=7.24,301.76");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=29.32,321.10");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=49.50,342.25");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=20.39,385.09");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=67.90,399.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=51.59,395.65");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=95.17,310.11");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=77.57,279.45");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=271.56,309.45");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=203.84,307.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=126.28,199.84");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=99.69,239.63");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=120.16,265.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=95.95,324.42");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=22.25,295.93");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=32.93,302.48");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=2.91,393.19");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=84.52,394.84");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=59.88,316.27");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=66.26,289.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=165.64,329.67");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=148.21,260.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=119.76,306.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=112.58,315.46");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=76.34,209.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=19.13,218.54");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=21.90,335.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=91.44,384.28");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=111.86,338.70");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=77.09,374.46");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=22.31,353.16");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=149.51,381.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=67.96,357.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=187.64,356.52");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=167.15,229.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=212.60,241.42");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=128.82,184.43");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=15.49,239.53");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=64.47,234.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=13.72,284.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=107.98,270.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=11.46,363.76");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=108.98,349.35");
    }

}

