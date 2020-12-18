
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_9
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=127.86,38.85");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=148.10,32.83");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=181.92,77.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=99.49,22.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=75.58,31.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=39.14,24.81");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=109.46,91.65");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=123.68,73.03");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=150.33,1.03");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=205.45,164.06");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=118.72,30.59");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=135.20,100.75");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=97.46,83.37");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=127.96,117.58");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=91.09,123.66");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=139.81,0.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=103.41,53.14");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=138.89,70.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=4.24,73.57");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=60.72,51.08");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=64.63,175.94");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=215.14,38.25");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=197.31,110.45");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=165.82,90.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=85.89,86.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=28.47,35.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=48.69,80.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=146.54,99.24");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=135.20,28.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=178.96,43.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=235.60,11.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=144.62,81.31");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=70.30,40.24");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=37.27,119.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=170.35,101.36");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=177.15,21.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=144.40,120.91");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=199.76,50.10");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=48.47,67.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=37.33,69.61");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=105.29,5.77");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=94.16,58.05");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=146.10,50.17");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=158.87,41.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=192.17,97.76");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=102.24,122.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=84.53,19.83");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=91.75,5.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=123.92,98.26");
    }

}

