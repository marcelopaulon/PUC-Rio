
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-0
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
        @display("p=178.00,298.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=253.09,278.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=189.58,255.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=196.46,211.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=135.67,269.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=93.41,327.88");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=49.64,376.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=63.27,339.85");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=8.25,390.45");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=12.96,364.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=19.19,392.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=2.78,378.08");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=77.65,355.65");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=205.31,270.71");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=246.57,295.42");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=234.59,342.72");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=186.88,203.69");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=159.48,317.85");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=24.11,313.10");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=34.60,352.78");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=4.98,290.75");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=15.38,350.37");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=0.75,362.25");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=70.13,316.54");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=59.42,396.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=123.94,318.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=159.94,304.21");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=225.40,325.59");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=231.12,241.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=203.89,281.70");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=76.01,298.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=126.71,254.97");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=100.34,370.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=92.87,271.29");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=6.64,342.40");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=35.91,321.55");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=100.31,337.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=24.63,378.31");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=130.68,301.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=226.02,290.05");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=241.69,281.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=143.72,295.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=166.12,172.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=137.17,180.06");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=81.72,343.25");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=10.71,326.03");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=38.08,365.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=52.78,356.56");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=64.13,324.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=9.31,316.12");
    }

}

