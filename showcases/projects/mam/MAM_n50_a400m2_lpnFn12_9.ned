
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_9
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
        @display("p=83.22,211.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=59.08,192.70");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=38.26,177.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=94.75,212.87");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=106.00,277.39");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=28.35,165.20");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=109.78,205.15");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=123.08,213.34");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=3.32,222.30");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=148.14,274.00");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=106.97,230.15");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=58.92,133.45");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=20.17,182.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=84.17,229.72");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=112.01,302.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=0.22,254.48");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=65.74,164.60");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=24.02,221.97");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=83.39,270.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=121.55,245.90");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=89.19,188.96");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=55.39,207.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=79.86,111.70");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=37.15,136.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=162.60,330.05");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=139.00,143.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=72.60,259.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=7.57,132.58");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=156.37,185.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=154.90,358.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=7.88,275.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=62.37,224.36");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=20.64,233.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=126.61,284.12");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=93.62,333.26");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=34.81,274.98");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=17.04,267.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=82.57,166.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=146.95,207.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=25.43,258.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=151.17,261.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=82.56,134.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=76.02,203.24");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=107.41,137.97");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=66.77,269.77");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=104.58,175.27");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=73.23,222.83");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=104.42,246.38");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=145.42,160.15");
    }

}

