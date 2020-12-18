
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_4
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=33.14,884.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=78.67,890.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=103.28,863.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=69.70,900.49");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=58.30,903.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=73.50,933.06");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=21.46,919.79");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=91.92,893.71");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=54.48,873.99");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=81.07,848.81");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=31.76,946.58");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=23.05,872.44");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=94.79,851.57");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=101.36,885.40");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=108.32,916.62");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=85.75,937.88");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=88.30,961.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=95.59,943.17");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=37.21,977.92");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=136.28,872.13");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=71.25,962.32");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=35.83,896.49");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=149.39,847.47");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=93.07,871.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=113.28,889.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=74.67,912.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=143.89,955.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=70.44,826.87");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=57.10,834.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=128.70,841.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=99.96,831.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=20.41,937.98");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=83.99,860.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=6.20,983.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=103.11,934.35");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=7.48,834.44");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=80.79,792.91");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=60.52,854.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=70.98,986.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=81.94,926.92");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=18.61,904.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=86.27,902.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=80.02,871.18");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=46.78,863.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=149.16,913.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=12.90,880.57");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=106.32,853.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=29.66,965.07");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=175.05,852.59");
    }

}

