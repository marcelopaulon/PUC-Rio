
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_0
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
        @display("p=118.69,103.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=99.86,30.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=107.58,8.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=120.71,25.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=185.37,4.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=237.14,13.67");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=37.68,125.48");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=117.71,197.50");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=165.88,32.48");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=124.85,11.91");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=73.77,101.00");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=145.32,92.26");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=199.24,62.00");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=117.07,115.94");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=158.01,151.38");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=94.10,46.58");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=175.25,51.73");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=193.14,88.26");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=216.62,22.67");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=326.71,33.72");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=56.48,147.49");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=62.25,32.94");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=153.63,22.40");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=84.65,82.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=148.57,52.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=192.19,12.35");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=266.69,26.89");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=17.65,70.06");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=42.49,40.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=76.60,88.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=91.52,71.19");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=107.53,80.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=139.03,29.24");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=206.33,12.25");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=168.43,42.15");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=100.91,120.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,111.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=76.71,36.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=208.75,38.51");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=122.19,45.47");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=288.11,30.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=84.04,47.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=33.73,137.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=63.84,13.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=152.75,5.00");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=135.44,17.51");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=261.84,67.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=249.50,68.61");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=159.11,70.93");
    }

}

