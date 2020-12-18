
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-8
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
        @display("p=176.00,108.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=251.30,125.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=297.85,63.34");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=290.71,110.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=207.03,162.10");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=226.80,61.06");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=220.32,110.13");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=308.08,76.14");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=271.15,188.93");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=183.99,197.12");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=189.60,68.45");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=238.20,116.41");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=287.93,129.87");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=252.22,49.76");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=213.94,182.06");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=143.24,129.26");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=317.97,87.04");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=227.16,24.32");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=270.34,113.33");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=221.89,157.58");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=115.54,177.57");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=164.25,140.74");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=319.42,67.61");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=252.37,19.83");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=184.43,151.62");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=268.88,82.49");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=263.09,68.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=287.93,96.21");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=321.31,131.73");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=254.46,185.21");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=114.45,102.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=333.75,124.94");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=228.94,101.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=280.06,195.96");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=151.70,83.51");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=189.99,106.28");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=252.54,108.83");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=341.59,79.31");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=334.94,94.49");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=237.83,212.27");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=215.34,90.28");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=213.95,198.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=316.82,23.26");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=233.10,86.23");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=197.32,207.88");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=179.66,122.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=266.10,130.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=326.09,76.43");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=301.59,165.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=197.20,142.48");
    }

}

