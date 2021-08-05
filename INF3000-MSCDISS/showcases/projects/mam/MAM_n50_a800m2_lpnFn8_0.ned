
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=144.91,75.10");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=59.70,97.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=55.64,25.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=11.39,90.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=34.65,51.67");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=39.85,23.12");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=179.45,114.90");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=178.90,74.75");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=40.45,128.55");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=139.74,17.69");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=55.92,74.49");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=106.29,36.17");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=41.27,7.41");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=31.80,108.96");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=110.31,92.49");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=51.14,46.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=121.99,35.33");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=11.60,56.70");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=91.19,0.41");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=86.86,79.31");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=84.78,127.73");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=149.16,60.71");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=89.71,56.53");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=53.30,110.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=19.83,20.51");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=81.77,40.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=69.71,49.36");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=95.29,145.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=125.31,76.57");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=22.49,157.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=7.92,2.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=28.70,28.83");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=39.95,60.35");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=63.74,65.83");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=37.51,39.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=117.70,53.29");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=79.14,187.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=99.72,16.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=42.08,156.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=26.58,78.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=61.29,10.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=71.01,93.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=100.01,67.70");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=129.47,142.05");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=54.58,87.52");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=0.46,174.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=18.18,47.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=34.75,95.05");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=111.58,127.64");
    }

}

