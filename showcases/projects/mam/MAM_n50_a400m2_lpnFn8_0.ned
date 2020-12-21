
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_0
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
        @display("p=152.66,64.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=147.16,39.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=84.68,40.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=97.42,41.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=112.05,8.42");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=33.48,36.12");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=93.89,2.02");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=81.66,11.76");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=93.45,25.48");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=78.33,68.30");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=179.48,14.79");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=126.21,23.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=60.99,46.48");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=125.04,40.80");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=165.11,47.01");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=156.24,32.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=76.79,127.89");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=3.34,39.54");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=189.39,61.82");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=60.36,91.77");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=97.79,73.67");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=98.21,59.62");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=125.68,52.64");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=2.20,26.05");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=154.10,93.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=145.66,4.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=56.00,16.57");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=126.45,78.87");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=160.80,71.97");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=108.33,49.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=111.79,116.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=77.03,23.20");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=117.52,16.98");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=73.95,3.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=149.61,170.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=113.01,103.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=203.15,12.19");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=47.80,4.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=125.13,97.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=115.55,76.12");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=21.27,37.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=81.77,109.89");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=168.26,117.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=192.25,72.27");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=145.70,28.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=163.96,19.64");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=46.35,22.91");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=57.34,75.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=108.02,93.85");
    }

}

