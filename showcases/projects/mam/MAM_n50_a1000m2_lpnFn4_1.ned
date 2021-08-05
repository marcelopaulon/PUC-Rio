
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_1
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
        @display("p=130.74,110.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=195.34,86.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=168.45,0.02");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=153.29,84.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=64.74,113.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=192.28,104.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=166.42,39.63");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=109.87,98.32");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=32.26,127.29");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=24.36,202.66");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=70.90,226.68");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=33.75,199.14");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=68.56,139.33");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=64.26,50.64");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=209.85,95.33");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=76.41,4.71");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=186.38,66.28");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=116.88,148.55");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=141.12,85.85");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=108.41,13.45");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=182.62,161.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=50.80,205.27");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=71.16,196.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=82.33,241.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=41.91,230.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=34.88,56.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=113.52,32.75");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=261.72,138.39");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=174.19,58.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=223.92,80.36");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=22.23,40.26");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=284.52,115.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=167.74,12.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=60.22,151.69");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=119.05,85.22");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=51.24,179.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=99.17,244.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=92.30,260.23");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=100.69,129.28");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=108.73,191.91");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=115.45,125.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=154.31,1.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=193.04,21.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=50.13,88.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=241.51,100.80");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=98.75,65.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=161.34,149.72");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=37.98,137.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=43.37,219.36");
    }

}

