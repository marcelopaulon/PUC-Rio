
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-6
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
        @display("p=118.00,372.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=177.73,338.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=193.74,343.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=188.10,356.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=117.01,321.99");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=82.99,341.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=53.76,272.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=71.10,223.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=65.89,155.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=110.60,93.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=136.88,171.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=133.43,185.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=47.62,219.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=111.98,356.49");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=168.12,352.91");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=124.99,290.89");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=203.92,335.72");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=75.54,378.18");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=29.56,362.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=25.91,265.78");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=76.94,203.46");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=28.56,220.87");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=129.38,118.01");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=118.90,88.27");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=143.53,276.56");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=29.67,150.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=35.40,349.09");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=188.14,392.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=138.05,385.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=216.54,296.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=184.58,306.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=89.29,379.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=26.74,312.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=63.72,232.16");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=14.98,159.60");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=161.93,140.65");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=57.61,173.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=164.55,212.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=46.48,202.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=66.02,333.13");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=236.44,315.28");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=150.31,344.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=211.35,387.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=180.53,283.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=76.13,259.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=149.89,251.52");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=132.39,203.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=4.55,143.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=132.44,96.30");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=92.85,159.63");
    }

}

