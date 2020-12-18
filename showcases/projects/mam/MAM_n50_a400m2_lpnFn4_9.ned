
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_9
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
        @display("p=36.24,298.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=56.07,279.45");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=20.76,310.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=81.20,273.23");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=159.01,304.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=130.22,332.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=127.01,263.21");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=109.77,248.88");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=117.06,226.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=79.26,243.97");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=91.34,195.79");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=73.48,115.30");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=73.23,303.61");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=11.47,324.49");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=11.52,239.49");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=94.49,268.38");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=36.29,312.06");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=202.87,284.09");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=189.29,268.86");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=124.78,284.76");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=116.05,239.23");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=36.82,251.00");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=64.92,266.20");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=46.66,262.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=64.54,99.51");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=121.38,295.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=64.40,298.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=42.37,289.32");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=82.61,312.56");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=150.92,343.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=229.16,369.72");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=118.28,338.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=135.70,253.75");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=105.75,259.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=95.15,248.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=112.13,190.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=19.83,201.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=104.39,108.57");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=103.94,378.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=63.45,335.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=108.89,292.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=34.44,239.26");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=126.24,195.85");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=243.87,267.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=108.27,281.34");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=152.32,292.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=160.50,248.66");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=23.72,258.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=163.92,203.64");
    }

}

