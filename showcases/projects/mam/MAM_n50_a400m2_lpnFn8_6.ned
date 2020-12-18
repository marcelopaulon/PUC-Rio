
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_6
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
        @display("p=139.41,309.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=127.97,398.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=137.62,364.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=159.85,350.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=91.57,388.72");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=75.81,335.82");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=131.24,381.26");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=77.86,293.24");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=119.86,306.82");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=103.88,362.27");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=164.41,289.29");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=175.16,372.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=76.27,321.44");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=134.14,226.30");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=193.35,348.95");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=70.68,347.71");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=149.31,378.04");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=178.78,345.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=176.77,391.85");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=61.98,340.53");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=69.98,310.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=233.63,337.26");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=187.69,321.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=138.49,374.20");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=200.16,319.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=119.63,345.22");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=110.87,287.22");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=49.91,312.18");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=92.49,248.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=84.94,356.18");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=178.75,282.01");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=142.21,298.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=101.91,382.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=108.86,325.83");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=48.81,345.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=162.83,328.40");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=127.60,358.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=137.11,344.73");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=96.97,347.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=158.63,361.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=47.13,388.06");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=119.40,295.13");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=213.04,332.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=114.47,366.04");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=140.98,390.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=230.76,286.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=142.38,327.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=116.86,316.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=60.11,286.46");
    }

}

