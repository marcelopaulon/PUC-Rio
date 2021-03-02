
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_5
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
        @display("p=86.15,88.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=61.85,7.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=49.98,23.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=41.66,55.29");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=40.61,14.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=53.26,1.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=81.23,59.71");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=17.02,99.32");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=2.51,54.89");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=62.83,41.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=104.66,37.51");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=118.83,71.37");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=173.60,116.91");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=104.73,164.35");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=70.27,29.95");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=55.27,50.06");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=29.27,115.20");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=108.22,4.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=116.11,32.67");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=32.28,26.34");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=19.26,58.61");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=8.63,28.92");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=64.00,55.90");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=85.27,13.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=100.61,89.81");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=163.90,87.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=92.83,147.40");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=8.70,82.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=31.45,1.03");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,116.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=6.05,11.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=65.97,74.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=59.44,92.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=12.63,113.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=39.74,44.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=144.83,32.99");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=185.92,36.79");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=164.19,14.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=47.60,162.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=121.72,47.58");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=29.31,14.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=35.89,104.32");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=70.84,19.23");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=132.15,4.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=82.81,70.28");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=22.99,31.30");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=5.38,69.69");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=19.33,40.92");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=30.97,84.17");
    }

}

