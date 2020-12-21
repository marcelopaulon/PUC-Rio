
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=121.71,97.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=85.27,71.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=109.38,9.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=33.24,51.02");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=120.08,123.50");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=43.73,120.17");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=80.17,148.25");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=160.87,79.94");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=66.03,72.57");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=75.24,33.45");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=111.41,98.24");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=34.59,91.86");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=18.12,9.20");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=38.63,6.39");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=21.77,64.32");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=157.29,63.09");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=59.43,25.06");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=152.56,31.37");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=78.14,46.47");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=154.47,183.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=130.82,73.94");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=24.46,146.62");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=121.91,53.12");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=97.87,77.76");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=87.87,118.52");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=111.41,61.19");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=136.31,139.09");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=140.21,55.76");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=21.69,87.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=99.85,139.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=43.11,41.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=75.22,63.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=90.88,106.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=55.99,140.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=136.20,151.88");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=200.30,49.61");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=1.24,22.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=97.49,19.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=18.16,50.36");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=68.46,120.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=151.30,89.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=156.50,102.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=89.30,35.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=86.33,86.24");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=146.02,148.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=177.31,131.25");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=85.58,9.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=179.76,22.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=11.33,19.51");
    }

}

