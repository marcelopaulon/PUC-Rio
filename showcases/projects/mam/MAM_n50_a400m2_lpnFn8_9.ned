
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_9
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
        @display("p=73.48,137.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=144.68,175.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=186.66,135.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=235.02,137.29");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=319.44,151.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=269.76,184.28");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=180.45,69.44");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=32.62,50.12");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=48.69,186.36");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=253.93,63.94");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=238.84,88.06");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=337.90,102.96");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=189.17,212.33");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=87.64,109.12");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=84.43,158.29");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=166.42,232.49");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=244.49,111.01");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=178.13,187.12");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=317.75,118.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=297.27,214.42");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=160.18,87.25");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=135.34,126.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=150.32,116.13");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=156.70,217.69");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=175.61,105.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=339.23,157.50");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=281.00,189.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=88.00,88.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=87.91,235.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=127.86,255.55");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=202.26,119.13");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=276.37,174.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=302.24,177.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=289.01,147.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=145.50,103.20");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=82.22,70.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=99.55,174.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=116.66,140.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=200.26,158.83");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=367.23,138.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=353.58,140.83");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=97.94,82.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=140.76,136.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=193.40,149.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=190.33,114.01");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=165.84,186.49");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=294.34,240.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=203.93,241.52");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=97.44,122.44");
    }

}

