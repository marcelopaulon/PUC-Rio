
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn1-6
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
        @display("p=115.00,341.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=118.10,395.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=64.97,356.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=80.83,289.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=51.84,363.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=149.82,337.68");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=205.18,392.65");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=191.01,387.88");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=218.96,389.91");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=272.76,365.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=307.46,335.47");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=316.69,395.04");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=335.72,310.57");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=385.55,340.07");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=376.61,325.83");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=370.32,366.96");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=325.56,325.40");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=314.06,304.10");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=279.37,351.16");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=216.67,372.46");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=191.83,329.59");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=196.98,234.73");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=257.32,305.40");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=253.28,352.30");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=204.45,326.85");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=108.67,306.76");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=148.32,274.52");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=134.73,273.12");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=116.48,322.32");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=198.09,399.77");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=193.76,306.54");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=241.84,228.46");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=271.11,202.58");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=259.72,204.49");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=176.49,221.51");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=166.84,192.82");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=167.79,103.70");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=113.70,107.45");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=104.64,163.65");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=25.03,202.83");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=41.20,179.27");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=57.92,174.96");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=12.57,193.10");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=37.50,244.39");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=10.40,252.55");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=26.82,159.67");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=7.15,184.67");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=104.05,197.56");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=153.91,128.89");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=161.15,119.74");
    }

}

