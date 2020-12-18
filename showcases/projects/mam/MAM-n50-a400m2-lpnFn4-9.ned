
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-9
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
        @display("p=46.00,379.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=15.43,387.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=2.72,375.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=28.95,390.32");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=9.79,304.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=100.72,274.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=104.38,365.64");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=19.57,375.44");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=53.33,397.57");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=131.54,348.86");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=205.48,378.76");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=259.30,313.19");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=267.42,349.60");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=38.07,284.27");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=58.97,373.77");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=43.75,389.22");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=105.10,394.55");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=88.13,332.32");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=62.70,292.22");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=123.30,390.22");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=58.84,336.23");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=46.51,298.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=69.39,305.45");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=188.17,366.40");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=332.78,373.31");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=348.20,298.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=39.07,370.61");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=5.74,333.40");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=34.10,399.69");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=14.09,358.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=35.47,320.49");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=66.04,350.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=121.47,331.05");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=76.81,366.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=77.94,327.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=176.28,348.09");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=121.65,379.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=229.50,333.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=341.85,355.90");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=54.47,353.47");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=66.41,396.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=8.46,318.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=41.66,336.43");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=66.82,316.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=160.04,267.71");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=25.35,314.52");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=0.12,359.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=76.56,384.54");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=102.41,293.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=215.04,366.69");
    }

}

