
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=89.23,181.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=10.64,129.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=18.70,113.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=3.20,103.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=53.19,46.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=79.37,109.13");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=128.42,120.80");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=162.16,175.38");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=199.12,161.34");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=139.51,187.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=172.32,103.86");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=229.07,171.48");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=77.28,17.56");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=29.55,186.82");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=64.24,154.62");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=54.68,118.85");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=52.02,130.65");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=70.20,0.09");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=149.30,124.33");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=110.21,212.31");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=182.59,156.37");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=206.94,142.31");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=74.61,252.20");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=151.32,25.40");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=222.97,217.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=155.62,161.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=92.81,218.16");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=45.02,153.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=88.13,150.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=27.99,28.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=101.38,23.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=135.24,88.80");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=122.10,107.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=182.07,190.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=240.75,116.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=173.10,229.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=160.38,118.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=209.01,210.11");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=67.87,170.07");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=51.46,171.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=14.48,89.03");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=14.63,35.26");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=35.60,35.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=41.46,126.13");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=78.02,97.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=214.95,120.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=153.75,215.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=214.46,245.51");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=184.54,218.13");
    }

}

