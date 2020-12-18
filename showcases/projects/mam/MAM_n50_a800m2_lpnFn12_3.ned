
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_3
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
        @display("p=67.86,45.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=146.24,37.88");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=221.31,7.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=187.44,16.35");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=60.43,78.69");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=67.99,33.24");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=170.83,45.74");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=207.99,4.95");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=91.24,17.43");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=111.59,94.47");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=50.67,51.97");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=154.65,78.13");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=191.97,71.10");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=263.18,52.25");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=129.78,84.63");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=23.40,89.03");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=150.08,27.21");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=186.48,95.41");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=191.82,28.75");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=115.49,4.51");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=89.49,47.15");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=180.47,9.09");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=235.05,11.84");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=171.68,16.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=105.88,124.85");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=73.48,129.90");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=143.03,100.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=273.36,79.35");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=145.75,67.20");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=80.86,75.55");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=54.18,17.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=144.27,82.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=205.87,22.58");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=230.81,53.45");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=54.09,119.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=75.35,58.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=149.02,50.40");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=132.82,12.25");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=111.47,21.39");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=81.13,179.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=84.83,108.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=242.93,50.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=251.16,5.11");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=201.56,42.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=68.91,102.11");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=127.70,56.94");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=143.62,4.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=232.64,72.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=190.50,58.63");
    }

}

