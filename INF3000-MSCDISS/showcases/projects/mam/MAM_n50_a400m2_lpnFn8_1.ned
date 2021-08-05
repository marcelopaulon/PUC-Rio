
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_1
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
        @display("p=145.19,71.83");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=192.33,99.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=146.05,41.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=155.17,62.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=207.21,113.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=216.37,117.94");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=106.78,43.79");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=90.85,69.76");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=122.99,82.64");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=131.70,56.31");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=171.23,84.51");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=191.32,118.08");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=230.30,165.47");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=148.70,174.18");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=141.29,132.50");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=244.40,135.81");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=71.57,33.70");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=185.89,51.08");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=223.03,97.42");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=231.20,198.60");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=110.68,85.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=119.29,138.83");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=182.15,14.49");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=127.35,73.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=232.94,46.12");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=144.93,147.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=220.60,128.61");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=133.82,34.69");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=237.54,68.67");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=125.66,93.63");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=156.77,18.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=149.74,88.58");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=216.97,173.09");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=275.03,115.03");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=42.06,91.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=204.00,95.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=171.21,107.27");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=194.17,3.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=178.43,119.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=191.76,136.34");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=231.42,177.65");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=22.45,45.02");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=219.77,28.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=166.77,52.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=142.54,17.23");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=139.58,90.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=217.50,186.81");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=206.17,143.36");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=43.34,19.17");
    }

}

