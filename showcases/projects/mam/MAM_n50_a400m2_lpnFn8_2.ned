
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_2
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
        @display("p=114.40,103.90");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=38.95,102.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=59.36,65.91");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=63.99,151.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=131.33,127.91");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=170.86,213.70");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=89.84,33.32");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=93.04,86.62");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=54.49,91.75");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=69.97,68.03");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=137.59,93.40");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=36.60,129.70");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=123.27,189.11");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=115.18,60.67");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=111.23,85.48");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=67.16,134.01");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=62.46,47.71");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=48.37,207.31");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=140.54,117.51");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=111.82,227.77");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=192.74,104.34");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=80.95,159.49");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=101.80,46.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=11.91,90.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=58.30,113.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=180.73,142.16");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=151.87,223.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=43.49,113.11");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=150.43,101.21");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=10.73,60.16");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=83.91,66.71");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=49.55,159.78");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=89.65,149.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=255.29,178.54");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=102.05,135.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=104.97,76.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=105.61,120.18");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=101.75,2.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=37.17,76.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=71.08,202.96");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=188.32,238.77");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=91.19,115.71");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=81.08,197.32");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=75.74,26.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=78.19,78.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=90.43,210.43");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=155.34,73.81");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=181.44,168.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=153.01,138.38");
    }

}

