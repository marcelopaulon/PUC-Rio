
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-2
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
        @display("p=238.00,275.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=249.30,203.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=237.58,166.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=252.77,113.95");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=166.17,136.64");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=307.28,329.95");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=205.12,194.45");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=203.47,238.67");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=272.10,153.52");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=136.68,194.52");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=177.43,329.24");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=229.27,150.98");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=211.74,178.77");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=198.57,43.08");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=181.65,169.16");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=241.01,309.14");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=161.66,241.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=252.37,168.99");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=344.19,79.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=225.98,164.87");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=180.87,292.58");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=275.94,272.46");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=221.27,115.60");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=281.61,158.73");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=229.09,84.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=241.49,251.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=244.34,194.40");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=200.26,78.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=174.76,63.51");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=198.47,93.36");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=291.02,316.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=241.62,262.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=252.78,242.39");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=266.42,97.12");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=92.95,108.14");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=219.22,282.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=205.05,166.98");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=246.30,179.58");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=255.55,131.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=144.76,130.04");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=269.81,247.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=314.03,146.46");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=234.38,108.89");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=302.57,116.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=156.52,156.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=261.42,293.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=324.41,165.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=237.29,143.41");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=275.50,134.23");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=202.37,154.28");
    }

}

