
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-2
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
        @display("p=345.00,486.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=354.11,505.45");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=286.05,549.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=327.17,534.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=405.41,498.19");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=424.13,475.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=440.18,535.50");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=382.83,457.48");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=344.86,512.47");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=271.00,531.50");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=338.39,602.44");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=435.86,548.78");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=442.79,567.29");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=475.88,594.49");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=398.55,426.20");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=350.01,546.28");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=302.14,646.53");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=369.19,480.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=414.42,579.76");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=382.74,420.48");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=432.40,483.80");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=286.84,407.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=344.05,528.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=305.82,602.17");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=336.98,558.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=448.29,542.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=518.64,467.97");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=384.08,537.42");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=364.54,468.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=278.39,449.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=254.16,474.92");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=324.13,518.84");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=409.91,473.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=431.33,463.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=363.68,512.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=322.25,447.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=305.16,442.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=309.64,569.18");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=351.87,614.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=311.96,465.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=493.32,458.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=457.25,479.02");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=271.26,520.13");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=304.04,499.46");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=239.64,537.09");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=373.58,562.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=420.13,596.65");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=520.33,482.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=381.74,504.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=329.84,473.02");
    }

}

