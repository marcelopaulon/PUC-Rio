
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_1
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
        @display("p=119.13,24.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=52.20,30.18");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=4.95,48.30");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=28.40,73.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=74.25,102.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=64.09,9.29");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=67.77,89.79");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=108.52,27.57");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=117.75,48.67");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=42.03,1.75");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=73.17,119.07");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=22.42,160.43");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=143.79,27.10");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=116.76,100.21");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=171.66,95.08");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=45.70,109.57");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=31.26,2.50");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=87.39,22.26");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=134.97,107.12");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=15.32,37.49");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=79.27,48.92");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=132.75,20.03");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=44.67,16.77");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=11.85,63.16");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=49.73,49.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,109.03");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=87.28,80.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=121.45,129.66");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=168.33,104.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=68.48,51.28");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=24.70,55.46");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=65.52,147.20");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=110.40,156.10");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=130.03,2.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=140.10,184.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=84.22,6.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=84.07,93.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=2.15,4.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=34.40,38.61");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=52.66,140.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=34.16,99.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=30.89,124.17");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=140.64,9.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=58.75,100.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=50.99,68.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=43.13,77.34");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=103.94,195.43");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=97.71,67.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=196.25,99.65");
    }

}

