
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_7
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
        @display("p=38.24,131.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=42.41,177.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=117.01,178.30");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=98.28,120.21");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=190.60,86.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=179.44,79.29");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=200.23,63.61");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=152.39,49.50");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=227.55,27.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=322.88,46.38");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=268.61,20.73");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=332.65,89.48");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=86.95,99.96");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=33.26,172.63");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=68.18,98.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=100.86,169.74");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=111.25,78.11");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=176.38,41.20");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=236.21,161.14");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=142.47,144.68");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=175.54,10.36");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=165.12,16.56");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=377.85,68.03");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=253.05,37.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=346.65,83.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=115.70,65.19");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=47.94,103.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=21.06,188.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=83.14,172.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=102.62,138.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=182.35,54.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=168.91,96.54");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=188.76,73.35");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=170.23,55.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=271.33,37.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=283.52,12.58");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=235.28,80.23");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=317.48,95.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=131.12,38.72");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=53.63,168.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=44.75,122.87");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=38.67,195.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=20.97,135.64");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=189.77,115.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=132.04,150.36");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=217.16,65.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=164.81,66.62");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=215.01,49.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=390.02,38.37");
    }

}

