
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_0
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=83.64,139.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=84.96,51.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=37.70,114.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=48.65,117.10");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=23.82,100.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=59.55,89.62");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=31.73,21.60");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=12.60,23.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=16.65,92.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=53.92,99.02");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=75.44,57.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=11.23,72.70");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=82.67,96.30");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=136.26,211.50");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=110.91,53.22");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=92.93,130.43");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=2.52,116.48");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=74.32,174.26");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=65.98,81.48");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=94.27,67.34");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=25.70,121.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=40.45,136.81");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=101.86,135.91");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=52.87,64.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=6.66,63.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=50.25,43.85");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=119.61,128.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=59.15,36.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=1.16,47.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=61.60,51.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=0.48,30.71");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=58.19,0.49");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=79.30,2.19");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=18.97,9.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=22.15,72.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=28.98,151.59");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=7.03,95.56");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=86.32,79.86");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=157.64,76.42");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=104.13,228.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=104.49,9.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=10.73,132.37");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=90.31,199.51");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=43.29,96.17");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,107.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=41.90,35.65");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=90.56,5.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=79.37,21.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=15.02,181.36");
    }

}

