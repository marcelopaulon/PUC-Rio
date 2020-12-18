
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_4
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=113.46,97.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=153.79,66.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=191.45,69.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=221.72,73.16");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=261.83,88.85");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=206.32,169.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=214.28,188.69");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=262.24,187.29");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=211.99,105.86");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=221.97,132.02");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=207.48,155.13");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=247.11,202.07");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=40.96,112.63");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=183.18,55.81");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=202.99,27.48");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=207.56,66.36");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=154.17,94.33");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=230.50,38.39");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=161.70,140.54");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=262.65,264.29");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=328.56,197.85");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=205.81,94.94");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=195.13,147.26");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=136.49,223.02");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=235.97,186.06");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=81.02,109.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=61.45,106.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=141.84,106.40");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=140.78,54.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=240.41,81.68");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=216.13,120.74");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=173.97,219.61");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=210.18,211.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=287.69,173.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=162.72,126.41");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=240.41,126.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=140.06,212.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=329.15,164.88");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=53.25,158.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=28.64,63.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=119.15,11.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=229.99,86.58");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=268.81,161.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=236.72,110.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=153.69,212.42");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=218.35,172.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=245.90,175.98");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=294.03,105.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=211.61,145.48");
    }

}

