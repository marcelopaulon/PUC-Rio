
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-8
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
        @display("p=239.00,578.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=166.84,583.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=217.56,591.13");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=185.85,555.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=256.35,626.30");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=186.04,606.31");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=143.18,599.48");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=173.60,612.88");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=160.48,512.67");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=232.52,620.96");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=288.05,624.43");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=69.27,579.49");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=185.71,568.71");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=159.44,548.70");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=219.12,553.53");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=239.34,555.98");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=127.20,632.70");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=196.12,648.81");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=157.24,592.07");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=264.68,656.55");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=266.14,529.33");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=157.29,639.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=189.47,581.81");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=262.81,565.89");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=304.41,619.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=275.06,611.12");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=108.28,574.58");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=211.68,600.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=197.64,468.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=229.22,565.48");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=228.78,523.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=129.26,574.35");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=233.25,593.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=207.13,620.53");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=245.80,566.10");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=289.22,572.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=169.80,560.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=298.26,535.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=110.90,533.20");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=279.17,701.62");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=249.94,541.09");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=118.80,610.74");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=296.54,602.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=189.90,535.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=238.14,639.67");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=252.02,578.19");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=135.89,647.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=144.42,544.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=187.29,470.57");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=273.35,626.62");
    }

}

