
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_4
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
        @display("p=67.81,165.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=40.07,213.23");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=6.63,277.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=35.12,276.04");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=112.75,266.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=149.75,280.31");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=125.21,46.92");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=81.69,134.96");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=59.26,206.58");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=16.16,289.90");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=102.38,278.63");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=144.74,216.37");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=235.28,237.55");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=22.53,115.18");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=70.20,68.83");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=53.97,115.63");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=48.30,313.43");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=8.69,320.97");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=188.95,276.99");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=66.94,243.42");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=41.72,165.74");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=112.97,143.07");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=109.59,207.51");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=66.21,287.60");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=12.16,227.73");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=132.76,322.47");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=161.48,216.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=127.31,113.76");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=21.25,193.85");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=43.82,224.45");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=54.05,249.52");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=35.04,302.81");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=34.83,243.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=235.65,330.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=83.89,48.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=65.95,215.58");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=3.02,140.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=38.44,195.82");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=53.74,191.62");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=82.39,238.41");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=69.80,311.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=178.89,156.42");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=55.99,81.59");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=19.22,166.25");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=42.80,266.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=13.67,241.39");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=177.09,218.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=160.33,205.40");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=130.43,13.13");
    }

}

