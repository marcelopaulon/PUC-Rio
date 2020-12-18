
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_7
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=105.58,285.65");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=79.79,277.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=154.74,283.09");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=186.75,234.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=227.74,186.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=243.37,150.15");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=190.30,89.34");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=160.00,108.72");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=167.83,57.30");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=141.34,42.54");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=124.87,65.57");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=112.00,57.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=143.45,336.08");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=33.00,295.47");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=78.28,266.91");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=162.07,302.35");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=149.94,226.10");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=168.33,160.07");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=234.64,129.28");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=199.67,122.61");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=67.30,123.32");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=159.45,44.57");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=201.21,23.69");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=93.38,152.82");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=73.38,48.51");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=187.31,292.28");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=79.94,303.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=130.71,304.69");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=152.66,253.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=214.60,222.88");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=204.09,169.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=196.84,199.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=139.44,67.08");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=82.98,95.02");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=163.76,15.92");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=146.19,16.51");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=128.74,101.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=157.90,77.34");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=55.51,383.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=165.41,351.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=54.46,215.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=96.48,277.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=140.21,288.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=196.23,274.67");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=338.30,129.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=257.98,129.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=216.65,155.42");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=207.34,89.36");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=115.62,27.64");
    }

}

