
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_7
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
        @display("p=163.73,337.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=174.43,322.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=206.48,279.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=189.98,369.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=174.55,354.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=191.88,345.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=273.19,330.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=193.16,319.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=241.27,339.73");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=338.44,328.77");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=375.30,348.37");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=318.61,337.52");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=95.06,273.72");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=177.86,333.44");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=173.56,280.40");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=232.61,300.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=230.65,317.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=138.53,362.07");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=225.61,286.53");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=243.30,282.16");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=212.63,318.82");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=249.47,351.72");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=354.74,370.44");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=396.66,372.87");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=300.62,338.35");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=130.01,222.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=115.13,309.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=258.80,322.38");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=145.79,313.49");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=184.31,325.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=116.68,285.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=207.95,394.10");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=267.87,284.35");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=291.08,325.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=190.15,269.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=254.31,275.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=294.38,310.77");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=280.71,281.77");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=95.80,226.20");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=139.31,389.44");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=216.89,366.05");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=223.82,212.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=161.32,392.05");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=231.30,334.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=287.47,352.84");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=267.94,347.27");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=255.73,387.40");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=190.00,388.59");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=366.56,343.39");
    }

}

