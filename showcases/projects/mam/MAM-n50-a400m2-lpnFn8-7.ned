
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-7
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
        @display("p=185.00,325.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=264.42,366.75");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=203.12,368.24");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=193.01,316.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=238.47,304.43");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=271.54,294.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=329.64,301.69");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=152.09,312.87");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=257.06,328.73");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=169.85,367.32");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=157.03,230.30");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=233.11,261.28");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=330.63,277.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=302.96,279.68");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=152.24,324.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=320.23,346.97");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=180.82,394.73");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=205.23,269.49");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=261.20,274.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=316.55,232.25");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=297.69,258.17");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=98.50,359.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=258.84,394.64");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=174.31,355.11");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=210.35,239.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=291.08,322.64");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=273.87,283.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=347.59,280.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=126.48,385.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=272.80,309.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=196.23,397.06");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=185.95,358.31");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=298.18,379.58");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=241.37,362.71");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=300.84,331.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=232.13,289.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=226.29,387.08");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=135.32,361.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=199.37,301.22");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=222.55,307.42");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=258.17,289.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=239.00,320.11");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=157.89,370.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=264.85,356.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=242.09,378.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=147.95,281.20");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=179.47,257.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=276.42,219.43");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=356.64,286.04");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=189.70,348.03");
    }

}

