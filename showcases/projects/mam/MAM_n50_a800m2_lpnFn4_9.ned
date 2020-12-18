
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_9
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=77.82,633.36");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=31.30,665.83");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=39.97,653.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=21.46,661.10");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=38.41,564.33");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=82.89,517.60");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=49.81,493.71");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=46.98,468.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=28.97,530.14");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=6.60,541.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=34.05,545.90");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=65.74,587.30");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=69.18,679.46");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=81.42,616.50");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=69.26,603.73");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=106.70,604.51");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=50.10,685.39");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=52.80,555.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=71.08,505.52");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=42.01,434.71");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=144.16,460.51");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=28.08,566.35");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=22.17,455.80");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=96.75,619.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=49.01,584.27");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=40.96,619.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=74.70,576.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=73.84,649.76");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=31.24,687.61");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=64.37,618.08");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=71.97,549.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=96.99,535.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=92.47,450.69");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=57.94,473.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=15.51,536.67");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=50.39,457.45");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=50.88,541.31");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=37.35,605.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=186.94,681.91");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=24.52,590.54");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=108.34,625.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=44.45,595.99");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=11.05,673.90");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=91.30,642.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=120.78,478.52");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=37.78,498.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=42.95,445.28");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=113.28,510.69");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=83.34,477.99");
    }

}

