
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=59.89,623.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=105.09,623.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=28.52,622.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=63.48,585.03");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=36.57,584.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=24.94,506.09");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=128.42,629.59");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=76.43,674.21");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=92.93,608.44");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=71.49,615.77");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=50.88,594.88");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=38.75,560.54");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=30.54,520.56");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=130.40,673.08");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=56.13,611.35");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=46.54,543.18");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=8.57,626.41");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=107.26,513.62");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=62.17,504.12");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=3.35,508.23");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=84.06,681.81");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=97.01,562.06");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=63.80,671.64");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=51.63,584.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=130.46,610.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=59.62,644.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=41.88,514.74");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=109.66,703.08");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=32.16,606.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=133.78,536.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=6.01,566.46");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=84.71,548.28");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=20.62,494.31");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=24.95,550.69");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=86.54,724.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=72.44,644.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=98.27,711.49");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=23.00,564.39");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=49.13,663.57");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=62.85,573.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=51.57,503.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=129.00,709.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=56.41,539.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=116.50,626.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=69.00,561.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=0.27,552.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=108.45,604.98");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=84.73,523.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=11.84,717.54");
    }

}

