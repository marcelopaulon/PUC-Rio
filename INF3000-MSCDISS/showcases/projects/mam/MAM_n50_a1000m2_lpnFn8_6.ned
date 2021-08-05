
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_6
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
        @display("p=99.07,82.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=185.85,59.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=126.41,90.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=128.45,71.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=115.49,101.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=82.98,140.81");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=59.24,101.43");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=111.83,77.98");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=190.95,16.96");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=161.18,54.75");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=137.53,91.38");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=61.91,42.45");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=71.04,137.46");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=107.67,65.83");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=43.12,69.55");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=164.60,113.01");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=68.49,18.18");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=162.99,67.33");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=193.00,141.31");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=7.86,100.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=45.31,152.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=30.15,153.40");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=125.55,134.79");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=158.03,162.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=47.42,60.12");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=118.72,111.40");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=43.67,213.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=30.94,168.80");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=52.57,141.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=221.01,83.05");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=85.07,122.88");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=187.89,26.67");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=130.19,166.88");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=23.31,125.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=108.63,128.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=70.62,164.77");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=252.80,104.68");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=177.68,166.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=97.87,8.70");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=63.04,116.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=50.10,128.44");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=73.13,104.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=31.36,74.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=226.04,109.96");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=79.92,61.60");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=142.77,55.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=37.25,56.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=130.75,191.20");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=189.29,97.95");
    }

}

