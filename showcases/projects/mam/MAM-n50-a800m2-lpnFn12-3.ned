
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-3
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
        @display("p=395.00,748.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=355.33,767.45");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=343.16,693.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=270.22,724.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=277.03,733.28");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=416.05,763.50");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=363.58,774.19");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=322.64,600.77");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=288.65,656.79");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=312.46,690.65");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=404.06,703.59");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=319.85,716.13");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=395.71,710.86");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=364.50,755.41");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=244.03,720.13");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=382.27,715.02");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=374.87,750.49");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=360.89,596.77");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=246.36,730.87");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=248.56,782.09");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=486.25,737.20");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=352.32,787.37");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=428.50,679.04");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=240.64,739.40");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=296.43,726.31");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=413.25,779.89");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=260.12,797.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=366.05,702.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=298.59,691.29");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=206.04,721.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=399.20,732.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=351.90,757.17");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=346.64,658.62");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=259.33,732.31");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=299.28,744.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=391.43,774.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=298.86,776.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=365.42,669.23");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=273.22,784.77");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=354.89,715.82");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=389.12,679.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=333.27,788.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=328.23,624.11");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=266.95,704.52");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=361.72,739.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=459.27,752.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=372.08,764.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=353.31,697.81");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=245.75,701.52");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=190.46,741.57");
    }

}

