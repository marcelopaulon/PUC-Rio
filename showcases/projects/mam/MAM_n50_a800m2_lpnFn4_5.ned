
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_5
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=155.36,133.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=142.16,150.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=222.22,173.14");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=295.65,171.71");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=322.08,158.25");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=299.31,125.11");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=255.86,84.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=287.07,54.84");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=301.21,48.30");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=395.42,30.73");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=350.81,36.10");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=354.01,75.97");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=108.56,69.37");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=202.93,89.17");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=190.39,135.49");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=215.52,212.30");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=238.17,119.95");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=307.81,179.00");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=350.00,139.87");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=315.91,72.80");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=356.17,110.85");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=288.09,18.59");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=332.74,13.50");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=371.15,119.69");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=362.71,125.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=84.82,122.36");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=126.71,70.20");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=125.64,91.14");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=171.33,238.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=275.00,157.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=247.07,179.46");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=318.64,51.77");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=187.29,150.43");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=306.02,81.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=346.35,57.90");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=421.51,39.99");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=435.45,26.02");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=387.21,84.86");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=100.55,77.94");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=161.89,165.52");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=188.61,183.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=278.78,123.43");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=293.33,135.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=374.94,173.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=351.02,124.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=195.37,19.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=367.26,22.27");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=213.65,9.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=412.47,7.19");
    }

}

