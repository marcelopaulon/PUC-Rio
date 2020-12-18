
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_3
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=172.04,151.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=235.55,150.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=284.55,220.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=332.75,273.95");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=125.73,104.38");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=108.11,86.71");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=236.06,179.95");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=332.50,149.36");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=286.09,252.55");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=85.62,9.44");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=229.00,202.93");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=250.32,175.16");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=329.30,228.72");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=367.73,198.41");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=116.15,45.95");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=97.21,149.73");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=199.45,199.93");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=311.58,223.76");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=394.98,265.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=128.10,64.70");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=147.74,206.02");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=272.70,153.09");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=289.65,241.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=359.25,230.02");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=130.64,180.56");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=188.45,156.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=281.21,79.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=279.11,204.83");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=316.26,294.70");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=33.85,166.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=155.09,189.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=297.61,80.95");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=213.63,275.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=289.32,350.63");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=112.11,15.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=184.05,127.10");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=232.44,165.60");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=290.57,304.85");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=340.35,289.71");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=127.36,153.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=203.84,234.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=171.51,86.69");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=326.92,132.43");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=361.37,279.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=102.80,128.12");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=126.22,234.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=303.24,93.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=193.30,215.51");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=247.37,243.03");
    }

}

