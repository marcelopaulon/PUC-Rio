
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-4
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
        @display("p=201.00,245.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=151.17,294.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=134.27,304.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=155.24,346.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=159.75,364.48");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=184.13,351.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=248.27,386.56");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=225.17,364.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=214.36,290.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=285.52,353.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=229.40,342.16");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=212.83,322.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=140.22,283.07");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=190.30,254.36");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=168.69,297.40");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=175.45,379.63");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=170.71,397.69");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=118.58,334.09");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=250.53,306.12");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=166.26,356.68");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=316.28,330.10");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=144.15,261.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=338.93,274.83");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=263.32,368.94");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=186.54,323.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=114.26,308.19");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=170.10,196.35");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=71.58,245.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=179.36,299.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=162.99,339.70");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=150.37,399.70");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=196.69,321.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=260.84,396.54");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=247.67,362.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=275.72,328.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=346.75,325.74");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=150.18,323.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=211.55,351.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=116.84,319.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=213.08,223.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=66.77,261.52");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=205.31,329.34");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=92.42,270.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=113.80,383.24");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=221.07,394.29");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=279.69,392.28");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=263.83,294.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=229.81,302.07");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=299.28,338.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=214.05,269.39");
    }

}

