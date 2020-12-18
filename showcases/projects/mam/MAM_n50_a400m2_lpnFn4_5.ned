
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_5
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
        @display("p=109.63,89.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=169.46,82.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=74.04,62.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=45.59,143.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=58.14,116.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=106.18,149.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=93.42,143.88");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=130.71,159.46");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=149.25,159.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=139.84,125.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=178.64,168.55");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=228.04,124.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=92.83,82.65");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=105.40,74.47");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=182.67,25.99");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=155.22,104.81");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=57.98,166.33");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=121.62,86.75");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=104.36,62.52");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=23.59,213.69");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=81.50,137.10");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=160.45,167.00");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=194.92,119.97");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=254.45,138.78");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=301.59,119.69");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=172.36,107.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=134.50,37.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=82.76,107.86");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=102.98,4.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=120.09,157.39");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=141.03,137.01");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=130.87,177.92");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=164.56,187.46");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=195.75,87.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=81.37,153.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=135.03,110.23");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=187.32,181.24");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=204.00,171.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=61.13,130.04");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=172.60,156.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=184.22,54.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=74.42,75.43");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=84.65,208.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=80.50,48.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=185.84,205.95");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=126.66,134.56");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=90.16,119.10");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=163.94,113.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=114.71,140.67");
    }

}

