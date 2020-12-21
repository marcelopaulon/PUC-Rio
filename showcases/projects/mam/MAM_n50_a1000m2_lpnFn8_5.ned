
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_5
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
        @display("p=136.63,33.42");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=191.68,66.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=254.89,40.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=244.80,42.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=280.66,41.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=359.13,78.08");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=160.00,88.70");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=137.16,125.60");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=218.66,114.54");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=251.04,50.72");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=312.09,64.37");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=352.71,55.21");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=397.73,41.78");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=71.59,81.29");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=50.14,79.21");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=187.83,118.84");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=226.34,60.06");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=299.69,74.10");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=266.05,71.66");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=387.26,8.02");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=148.39,91.32");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=96.46,22.25");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=248.60,116.66");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=317.29,19.06");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=238.16,34.75");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=191.18,42.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=330.19,35.77");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=48.75,182.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=174.69,58.47");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=167.83,46.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=178.59,33.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=205.16,35.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=300.42,61.25");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=312.06,49.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=96.99,88.68");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=150.26,28.27");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=183.33,49.60");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=267.20,114.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=177.31,7.39");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=280.56,85.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=371.41,108.84");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=92.13,51.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=231.73,6.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=224.76,37.65");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=243.58,70.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=194.59,12.00");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=275.42,9.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=371.93,132.44");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=170.44,71.89");
    }

}

