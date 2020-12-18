
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_5
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
        @display("p=58.65,74.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=42.06,62.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=75.11,10.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=130.05,38.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=140.11,18.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=143.94,7.22");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=93.95,26.32");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=97.59,57.76");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=24.08,52.26");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=23.48,23.59");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=175.13,96.14");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=236.05,21.16");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=199.49,20.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=106.19,133.09");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=3.73,97.99");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=67.92,20.44");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=97.81,39.27");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=132.92,49.98");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=94.43,78.47");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=45.38,13.12");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=133.40,148.53");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=43.01,89.52");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=92.23,117.67");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=143.95,58.76");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=93.59,12.90");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=179.55,110.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=181.67,41.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=167.10,110.83");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=74.36,48.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=47.50,34.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=57.31,96.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=120.84,26.35");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=157.88,37.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=149.59,27.43");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=176.82,63.33");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=5.47,36.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=7.75,80.20");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=134.85,1.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=117.71,93.09");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=63.63,57.10");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=127.41,79.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=87.12,46.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=20.58,41.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=45.43,75.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=118.55,6.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=219.03,81.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=226.43,40.12");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=158.66,6.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=15.39,98.35");
    }

}

