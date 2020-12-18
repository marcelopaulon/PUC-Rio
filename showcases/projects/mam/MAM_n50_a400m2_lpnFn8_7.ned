
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_7
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
        @display("p=185.91,79.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=236.76,24.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=196.24,69.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=169.58,76.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=184.31,96.73");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=249.49,9.72");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=133.85,93.91");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=180.48,134.82");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=234.63,39.18");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=117.60,65.82");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=143.54,8.82");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=155.56,32.19");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=223.71,27.86");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=81.17,106.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=125.85,34.70");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=206.14,40.30");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=132.15,50.01");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=163.75,91.11");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=160.59,130.55");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=276.31,26.62");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=114.85,102.21");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=101.43,42.48");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=169.63,18.34");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=174.96,159.05");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=114.16,51.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=173.64,87.14");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=269.04,71.95");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=49.72,98.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=149.31,72.18");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=228.03,7.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=184.45,40.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=168.31,62.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=243.24,135.13");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=274.41,85.65");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=130.13,160.00");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=252.70,139.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=290.84,63.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=262.77,100.32");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=194.03,169.81");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=149.17,47.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=265.68,2.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=154.93,167.00");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=157.23,54.33");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=193.94,30.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=183.14,151.29");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=211.20,90.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=210.09,137.54");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=232.84,50.82");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=76.12,63.67");
    }

}

