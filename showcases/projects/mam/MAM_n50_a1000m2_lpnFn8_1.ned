
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_1
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
        @display("p=36.54,130.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=79.52,78.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=67.36,73.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=54.28,66.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=37.81,27.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=43.95,44.34");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=76.46,113.50");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=51.76,37.45");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=1.23,93.45");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=30.54,6.47");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=12.38,14.71");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=107.34,50.41");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=30.58,142.56");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=129.91,67.77");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=105.59,120.37");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=54.48,111.89");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=111.20,81.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=22.46,105.79");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=34.48,80.94");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=63.41,51.63");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=32.45,56.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=75.06,185.07");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=92.47,27.08");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=29.43,42.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=151.03,74.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=79.33,20.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=41.81,73.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=118.23,94.37");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=78.45,48.41");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=44.15,97.48");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=75.78,91.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=18.66,36.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=2.62,105.29");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=65.87,32.53");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=131.61,144.32");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=89.29,46.38");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=146.72,53.94");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=92.43,59.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=29.69,97.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=22.08,23.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=117.47,37.80");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=63.79,89.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=51.48,152.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=91.76,133.31");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=146.58,123.76");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=11.85,88.23");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=56.15,77.08");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=71.10,11.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=157.93,29.33");
    }

}

