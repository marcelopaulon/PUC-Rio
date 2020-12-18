
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-7
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
        @display("p=93.00,1.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=148.37,20.47");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=93.74,25.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=85.04,91.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=116.78,66.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=92.85,142.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=21.41,180.94");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=27.27,142.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=14.79,96.30");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=19.34,79.88");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=46.76,21.49");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=55.01,77.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=47.96,93.67");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=34.23,5.63");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=202.50,64.40");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=96.27,35.96");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=25.58,117.11");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=198.46,51.79");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=107.11,79.87");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=8.44,173.87");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=45.04,112.73");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=1.88,72.14");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=17.64,49.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=87.36,58.85");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=43.87,43.69");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=101.86,89.25");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=133.54,3.69");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=181.49,26.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=93.19,68.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=66.22,135.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=100.50,46.22");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=83.15,75.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=59.95,147.61");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=57.88,125.53");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=45.57,63.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=23.45,105.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=73.93,27.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=78.40,17.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=102.79,133.51");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=81.20,2.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=118.87,23.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=94.29,14.91");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=64.35,83.55");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=36.17,124.03");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=126.18,187.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=40.08,186.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=54.29,196.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=10.37,140.66");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=50.09,2.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=34.34,31.77");
    }

}

