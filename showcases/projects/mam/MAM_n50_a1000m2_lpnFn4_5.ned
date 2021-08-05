
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_5
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=157.58,140.42");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=170.64,153.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=196.36,142.42");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=183.68,197.48");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=216.58,237.56");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=265.49,227.85");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=222.60,273.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=158.33,314.10");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=137.02,291.07");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=127.93,358.27");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=106.54,427.89");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=86.62,404.70");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=140.78,174.09");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=155.57,76.52");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=173.03,115.80");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=188.18,125.82");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=152.97,248.09");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=217.61,326.21");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=261.31,250.96");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=236.78,294.97");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=100.37,247.29");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=152.85,235.03");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=146.66,327.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=129.70,346.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=60.86,499.55");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=118.86,78.21");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=163.23,106.20");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=212.74,214.71");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=186.11,63.27");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=247.57,139.92");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=140.17,215.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=199.90,271.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=233.02,264.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=172.14,232.42");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=126.35,271.28");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=104.48,370.27");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=167.75,424.78");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=64.14,420.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=117.59,29.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=209.82,142.29");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=195.94,81.91");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=221.83,109.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=185.00,163.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=215.89,166.72");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=268.37,166.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=286.24,232.62");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=143.15,310.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=93.64,327.32");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=119.75,304.49");
    }

}

