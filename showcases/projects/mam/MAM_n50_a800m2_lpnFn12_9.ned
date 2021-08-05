
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_9
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
        @display("p=159.71,71.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=162.59,33.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=158.56,55.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=207.58,62.46");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=91.41,71.26");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=123.95,123.53");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=168.88,2.07");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=149.43,108.46");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=221.17,63.38");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=66.59,82.01");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=209.57,109.81");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=238.60,24.74");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=183.66,68.33");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=199.91,116.66");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=128.39,42.03");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=141.69,92.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=183.37,24.65");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=177.42,138.96");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=267.52,140.54");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=12.35,58.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=185.14,122.03");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=235.20,3.04");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=82.49,29.79");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=133.82,17.81");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=52.20,160.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=122.25,107.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=105.09,9.61");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=79.29,47.29");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=227.91,28.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=66.12,179.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=142.38,56.26");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=127.03,54.20");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=150.41,33.59");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=133.07,86.80");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=69.54,131.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=166.13,114.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=160.26,131.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=106.23,111.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=258.34,78.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=94.28,128.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=154.97,84.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=167.07,21.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=220.15,101.77");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=185.72,105.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=34.79,120.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=235.33,64.43");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=173.55,34.04");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=193.04,58.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=242.76,87.15");
    }

}

