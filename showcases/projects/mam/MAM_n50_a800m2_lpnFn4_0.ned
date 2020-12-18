
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=72.56,58.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=43.08,30.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=28.38,26.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=108.72,76.33");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=125.36,29.57");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=92.41,52.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=137.41,44.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=156.10,38.15");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=185.19,52.81");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=160.30,52.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=170.46,43.17");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=163.38,28.99");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=139.02,140.52");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=83.53,6.53");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=0.01,71.62");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=84.92,26.17");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=131.31,126.26");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=153.78,94.21");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=44.73,102.53");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=173.55,111.23");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=151.02,72.31");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=144.33,98.78");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=207.54,22.28");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=172.37,80.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=241.57,61.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=35.23,95.84");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=110.50,146.95");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=52.04,7.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=71.23,74.66");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=118.94,95.19");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=89.75,97.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=32.30,54.95");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=230.91,58.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=116.18,105.34");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=212.54,54.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=244.58,46.62");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=153.26,10.14");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=136.31,19.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=96.87,117.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=99.21,0.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=36.60,40.40");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=35.35,14.00");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=79.43,96.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=178.64,30.86");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=122.15,10.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=223.00,70.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=255.17,47.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=186.94,41.45");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=124.80,52.84");
    }

}

