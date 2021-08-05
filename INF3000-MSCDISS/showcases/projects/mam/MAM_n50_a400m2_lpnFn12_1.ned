
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_1
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=32.88,165.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=13.87,118.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=53.98,124.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=48.64,150.45");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=112.21,143.58");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=44.63,160.01");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=41.74,60.92");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=105.51,90.62");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=51.31,170.66");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=128.27,36.37");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=0.92,253.25");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=10.44,132.11");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=122.23,156.66");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=53.16,215.87");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=55.44,139.81");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=2.04,85.99");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=21.74,110.52");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=60.47,81.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=42.85,189.30");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=34.63,71.83");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=128.14,170.48");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=72.72,115.96");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=40.98,103.72");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=5.58,185.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=101.35,71.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=33.92,222.58");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=105.91,154.77");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=2.45,101.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=85.86,82.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=82.42,97.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=83.25,163.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=36.53,125.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=25.39,46.85");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=109.69,226.98");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=171.30,91.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=18.14,156.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=17.46,33.88");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=53.89,91.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=140.13,136.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=177.53,42.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=37.51,244.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=43.39,37.37");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=68.53,194.26");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=96.92,203.31");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=107.12,107.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=34.84,140.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=25.05,125.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=83.79,112.14");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=127.24,200.02");
    }

}

