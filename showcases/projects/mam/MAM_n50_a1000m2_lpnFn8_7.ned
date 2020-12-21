
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_7
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
        @display("p=95.69,136.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=128.93,171.65");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=83.10,198.21");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=178.62,206.53");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=166.19,234.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=85.08,243.29");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=100.41,36.82");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=71.65,221.18");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=171.49,221.84");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=95.53,275.18");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=246.32,139.28");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=209.46,239.94");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=28.20,161.51");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=131.62,107.59");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=26.58,147.57");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=118.06,168.67");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=142.00,125.12");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=189.95,208.06");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=99.41,246.00");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=154.08,284.35");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=122.01,4.89");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=14.31,135.06");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=176.60,129.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=51.43,236.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=130.53,220.85");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=242.32,241.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=154.07,252.83");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=138.35,13.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=158.74,171.36");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=63.44,213.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=117.89,261.63");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=206.25,216.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=109.82,161.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=31.96,188.89");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=47.51,128.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=119.58,58.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=147.53,148.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=23.37,195.23");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=99.93,182.83");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=162.62,246.54");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=120.71,235.77");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=110.14,129.39");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=186.17,119.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=111.94,108.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=95.06,232.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=201.41,263.04");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=184.70,284.68");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=80.20,259.87");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=112.75,144.55");
    }

}

