
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_5
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
        @display("p=103.19,647.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=108.99,552.04");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=81.48,505.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=95.30,563.43");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=113.72,605.62");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=89.36,641.41");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=58.23,472.99");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=73.94,574.72");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=131.76,575.69");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=108.77,736.46");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=96.04,655.66");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=95.18,479.57");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=70.81,495.76");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=115.82,574.34");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=139.59,716.35");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=34.81,613.03");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=33.17,530.33");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=73.56,481.93");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=127.14,565.27");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=96.18,615.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=178.70,620.03");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=102.97,538.31");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=10.93,465.25");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=56.43,649.28");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=46.17,719.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=125.06,701.20");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=62.78,547.42");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=112.10,488.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=164.85,592.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=85.58,704.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=83.16,615.44");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=143.04,551.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=53.28,424.47");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=157.59,486.53");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=88.65,715.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=170.55,634.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=182.08,523.58");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=89.55,414.85");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=77.35,530.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=51.39,666.84");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=161.93,704.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=77.06,561.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=139.73,474.32");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=42.59,561.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,638.68");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=72.08,665.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=84.31,587.92");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=73.78,417.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=84.62,544.88");
    }

}

