
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_2
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
        @display("p=104.08,117.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=123.72,128.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=142.43,111.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=73.64,112.89");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=105.55,13.05");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=174.46,88.41");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=160.07,108.00");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=111.36,187.95");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=158.71,120.21");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=125.93,189.85");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=27.64,159.06");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=82.07,162.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=86.77,28.78");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=87.31,116.49");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=120.70,56.50");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=138.52,85.76");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=195.66,138.19");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=114.74,115.53");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=11.99,68.25");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=182.92,125.92");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=172.58,140.61");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=126.81,161.58");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=110.69,81.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=17.28,153.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=55.97,97.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=98.50,54.92");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=57.21,65.42");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=228.03,101.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=19.34,113.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=129.49,120.04");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=118.63,143.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=107.08,203.82");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=219.46,117.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=7.80,77.51");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=175.62,58.28");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=74.45,209.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=65.73,181.96");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=137.89,151.22");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=29.48,125.40");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=128.01,96.72");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=87.11,203.12");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=77.41,198.24");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=233.16,84.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=72.62,125.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=181.52,97.14");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=86.75,63.70");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=84.50,105.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=146.81,96.59");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=27.44,144.19");
    }

}

