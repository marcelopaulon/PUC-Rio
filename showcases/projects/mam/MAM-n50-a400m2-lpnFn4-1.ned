
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-1
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
        @display("p=352.00,231.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=389.47,305.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=351.25,362.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=361.52,288.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=346.01,299.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=322.88,250.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=264.91,325.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=277.63,342.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=281.69,379.74");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=241.38,306.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=200.11,305.40");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=218.74,372.08");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=247.67,380.00");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=398.43,267.16");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=323.14,285.70");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=370.78,366.42");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=375.17,283.58");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=358.98,246.57");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=333.64,272.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=276.83,356.94");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=254.88,342.47");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=317.09,379.26");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=257.83,356.74");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=212.12,236.75");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=213.22,385.77");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=246.31,359.88");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=318.94,305.97");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=394.35,290.85");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=386.38,372.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=369.09,346.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=367.41,275.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=339.56,250.87");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=246.30,326.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=195.77,360.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=290.48,366.91");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=162.80,315.65");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=183.76,232.18");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=234.27,389.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=201.08,328.13");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=389.89,171.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=387.52,316.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=317.56,394.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=327.98,241.46");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=346.80,331.72");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=269.69,313.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=310.90,289.34");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=337.79,388.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=296.23,380.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=272.54,300.68");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=199.01,399.17");
    }

}

