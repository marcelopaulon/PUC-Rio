
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_0
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
        @display("p=44.49,302.80");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=70.17,345.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=118.72,395.98");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=119.29,382.98");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=88.00,376.99");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=124.45,365.85");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=137.91,362.02");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=137.90,337.71");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=147.64,300.39");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=198.65,250.88");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=190.78,260.24");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=230.23,246.94");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=112.81,202.73");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=56.68,292.20");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=48.47,351.98");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=119.67,314.32");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=81.79,366.36");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=94.80,282.18");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=102.43,319.65");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=134.02,351.56");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=84.92,318.16");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=126.80,295.27");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=185.82,300.94");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=187.73,282.71");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=180.92,271.69");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=86.51,332.84");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=138.90,323.81");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=164.48,347.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=108.39,399.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=97.26,350.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=87.15,302.14");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=186.69,350.10");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=184.36,372.77");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=173.15,292.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=170.16,335.00");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=215.74,261.58");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=240.15,341.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=272.12,206.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=28.45,307.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=39.99,222.68");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=59.55,359.96");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=201.37,393.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=119.25,350.32");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,292.19");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=37.41,375.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=144.45,383.65");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=169.12,357.70");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=158.84,297.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=205.72,281.73");
    }

}

