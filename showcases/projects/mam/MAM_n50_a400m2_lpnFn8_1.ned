
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_1
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
        @display("p=116.58,304.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=47.06,348.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=8.02,349.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=51.87,370.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=39.79,362.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=80.89,337.75");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=171.18,289.43");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=101.00,220.89");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=58.47,335.67");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=16.77,330.88");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=0.79,370.32");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=36.93,386.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=44.99,261.31");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=122.59,259.31");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=111.07,328.53");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=23.45,362.74");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=86.51,350.02");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=50.70,391.50");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,394.08");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=38.63,278.43");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=151.03,238.96");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=101.43,383.91");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=13.32,375.68");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=2.07,270.02");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=3.40,283.56");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=69.98,393.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=136.22,356.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=189.86,297.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=132.05,330.04");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=68.46,279.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=28.81,282.25");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=4.25,331.28");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=33.42,397.65");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=29.97,268.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=166.54,306.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=175.91,275.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=115.50,387.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=69.18,348.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=47.18,300.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=9.64,306.61");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=97.74,355.98");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=112.59,273.55");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=132.30,342.49");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=120.09,280.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=29.85,312.68");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=67.23,329.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=37.03,345.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=43.51,329.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=130.36,234.44");
    }

}

