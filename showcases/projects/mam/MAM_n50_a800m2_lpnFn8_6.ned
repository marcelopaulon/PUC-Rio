
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_6
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=32.83,657.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=5.81,573.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=78.81,571.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=62.57,539.16");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=4.83,526.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=50.00,545.56");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=120.68,751.34");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=68.56,657.72");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=0.99,594.05");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=117.86,554.48");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=69.68,444.35");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=41.10,456.93");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=64.03,517.17");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=57.74,614.10");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=55.95,603.51");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=13.69,562.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=172.39,561.03");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=3.77,555.50");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=14.22,551.96");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=116.83,523.09");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=74.75,686.08");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=6.67,659.26");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=21.18,569.61");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=97.67,548.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=127.68,528.08");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=41.61,506.37");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=95.51,619.21");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=96.86,711.39");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=93.31,646.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=10.81,600.79");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=78.46,557.93");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=58.80,502.45");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=57.31,565.53");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=48.02,517.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=33.90,762.50");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=52.14,711.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=46.73,592.79");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=91.23,581.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=73.62,538.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=24.08,488.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=44.60,564.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=114.88,717.88");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=15.03,639.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=86.51,591.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=121.40,641.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=31.72,575.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=99.77,499.53");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=103.85,576.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=112.77,703.65");
    }

}

