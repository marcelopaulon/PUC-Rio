
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_8
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=109.62,150.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=115.66,135.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=135.50,135.43");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=57.94,197.31");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=77.74,191.31");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=123.30,196.54");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=125.71,152.54");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=192.65,143.04");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=69.70,203.49");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=201.74,122.49");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=55.53,233.84");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=8.58,252.26");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=83.01,139.11");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=78.43,56.15");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=101.34,161.39");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=42.59,150.02");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=116.73,57.12");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=27.34,128.24");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=16.21,204.63");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=161.78,226.95");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=84.35,173.54");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=104.77,138.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=21.00,136.60");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=159.82,149.58");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=34.82,182.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=127.50,240.46");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=92.26,243.15");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=144.64,67.05");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=71.95,171.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=152.46,139.93");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=188.94,101.89");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=55.46,187.41");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=60.43,174.99");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=88.14,201.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=103.04,43.67");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=25.67,97.51");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=162.96,163.28");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=209.17,84.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=38.97,279.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=33.91,245.46");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=137.70,202.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=92.94,127.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=141.78,81.04");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=177.01,171.11");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=197.36,182.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=79.28,219.76");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=151.49,174.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=133.11,191.69");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=132.25,161.65");
    }

}

