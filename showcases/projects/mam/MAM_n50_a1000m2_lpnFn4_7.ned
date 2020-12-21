
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_7
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
        @display("p=79.57,2.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=77.95,27.55");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=87.43,79.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=129.89,151.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=193.19,164.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=261.00,185.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=267.24,223.16");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=318.83,176.38");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,199.28");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=323.54,213.37");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=277.70,132.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=365.32,115.76");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=130.70,162.21");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=97.37,10.28");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=35.74,51.25");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=150.40,30.24");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=44.79,162.01");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=186.11,235.93");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=231.32,213.78");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=288.91,192.02");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=308.89,133.54");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=179.02,114.49");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=257.91,282.18");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=349.49,167.25");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=360.44,97.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=194.58,67.84");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=33.07,5.80");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=50.63,8.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=64.42,78.80");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=112.55,67.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=209.67,148.38");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=241.94,249.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=261.10,303.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=356.46,223.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=156.12,189.32");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=318.54,222.25");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=232.40,94.66");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=343.54,95.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=105.01,78.47");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=8.43,69.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=68.92,101.37");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=79.31,88.88");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=121.07,135.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=176.22,252.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=272.46,157.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=312.28,267.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=363.84,261.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=216.79,123.88");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=346.04,228.93");
    }

}

