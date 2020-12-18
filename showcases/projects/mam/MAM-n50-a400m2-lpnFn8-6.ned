
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-6
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
        @display("p=291.00,156.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=312.15,124.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=340.90,160.01");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=275.39,141.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=279.41,118.22");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=300.74,169.67");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=304.60,235.62");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=307.01,202.78");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=242.86,193.74");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=380.03,212.52");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=218.12,102.07");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=300.33,118.92");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=373.65,171.24");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=363.41,188.60");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=234.03,170.72");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=321.23,144.03");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=296.47,93.40");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=273.08,76.96");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=330.94,86.87");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=370.92,111.39");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=267.09,203.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=315.94,226.28");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=329.89,130.52");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=388.31,166.11");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=325.20,163.81");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=291.15,104.95");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=243.74,211.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=262.77,216.08");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=252.23,78.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=267.16,114.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=332.10,177.00");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=216.97,157.85");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=187.39,109.98");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=297.47,251.10");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=229.28,208.14");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=349.35,173.94");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=306.42,156.30");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=358.28,129.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=195.38,184.43");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=283.41,127.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=272.53,91.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=365.75,270.16");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=277.34,213.37");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=337.47,141.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=372.67,204.86");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=299.98,141.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=239.00,146.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=347.19,185.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=369.04,307.92");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=265.39,156.07");
    }

}

