
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_4
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
        @display("p=99.63,55.62");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=81.74,94.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=13.66,136.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=14.28,160.11");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=96.34,80.47");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=162.27,37.99");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=42.42,86.44");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=39.15,133.66");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=99.86,195.10");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=89.51,111.15");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=17.29,98.21");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=151.45,71.47");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=28.04,181.99");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=12.21,209.09");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=54.62,125.94");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=110.00,5.20");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=39.87,144.45");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=80.29,151.55");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=17.07,108.32");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=148.36,159.42");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=191.21,84.27");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=105.45,146.54");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=58.87,92.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=14.12,252.34");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=96.12,36.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=36.46,68.30");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=76.17,131.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=61.98,140.00");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=47.88,181.64");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=129.59,106.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=68.36,1.63");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=62.79,44.34");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=63.05,217.30");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=40.31,190.60");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=167.58,105.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=122.92,74.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=30.63,119.08");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=111.76,118.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=112.89,159.29");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=133.38,79.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=75.21,38.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=52.60,21.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=54.82,164.69");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=80.98,193.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=118.99,181.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=152.62,96.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=74.15,72.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=2.46,108.44");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=26.09,154.30");
    }

}

