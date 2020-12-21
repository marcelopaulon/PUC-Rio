
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_9
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
        @display("p=116.90,161.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=107.21,218.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=122.46,264.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=57.44,195.27");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=42.13,220.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=15.88,169.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=60.16,249.86");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=51.22,228.77");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=25.24,218.38");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=20.74,325.29");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=62.95,313.60");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=144.87,326.19");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=110.73,108.24");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=121.76,144.54");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=80.16,215.52");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=136.61,277.65");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=98.47,284.78");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=5.60,245.98");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=0.36,224.38");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=19.54,243.34");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=65.65,235.07");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=33.56,165.69");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=49.59,399.29");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=111.82,244.67");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=139.30,315.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=35.96,107.81");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=62.57,142.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=128.10,184.19");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=160.51,261.80");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=108.01,230.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=37.76,144.08");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=15.05,142.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=127.82,255.07");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=48.87,206.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=49.72,253.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=33.10,388.58");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=145.37,302.02");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=194.77,398.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=141.02,38.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=138.45,86.66");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=164.60,229.98");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=142.50,345.11");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=11.47,205.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=122.12,203.51");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=47.85,129.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=74.43,346.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=55.77,169.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=82.60,234.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=52.08,323.31");
    }

}

