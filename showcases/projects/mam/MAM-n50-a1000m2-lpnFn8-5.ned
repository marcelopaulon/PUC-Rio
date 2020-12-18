
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-5
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
        @display("p=30.00,746.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=44.12,727.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=3.58,735.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=42.44,814.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=76.53,767.44");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=50.33,807.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=86.26,818.48");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=126.75,758.81");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=54.58,724.28");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=34.07,661.73");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=35.46,868.27");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=9.52,784.59");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=59.56,768.27");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=104.13,806.48");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=37.17,759.73");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=119.61,707.57");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=1.27,834.87");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=111.80,755.44");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=103.85,730.86");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=26.43,811.21");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=106.51,830.39");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=33.86,715.67");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=105.53,697.04");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=17.86,771.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=2.32,861.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=42.71,832.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=25.22,860.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=116.12,847.93");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=48.47,758.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=20.48,710.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=72.05,669.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=71.29,778.88");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=93.54,784.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=74.04,805.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=146.24,884.97");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=1.02,809.61");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=69.06,643.71");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=25.74,696.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=12.91,756.06");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=12.34,809.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=67.25,861.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=112.94,778.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=22.00,785.99");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=58.46,795.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=31.40,681.29");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=78.96,833.24");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=92.56,683.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=26.42,837.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=123.35,872.51");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=84.31,792.80");
    }

}

