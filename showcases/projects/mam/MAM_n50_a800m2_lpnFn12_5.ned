
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_5
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=17.40,738.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=54.95,735.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=72.99,790.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=56.75,784.03");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=125.09,657.35");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=66.18,672.44");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=102.15,721.51");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=81.19,774.00");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=23.79,759.94");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=83.48,751.66");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=114.71,750.43");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=37.28,713.48");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=155.63,764.24");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=63.18,753.64");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=52.24,746.19");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=18.73,784.81");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=143.97,742.74");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=94.65,792.56");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=21.78,774.03");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=72.12,626.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=27.23,684.18");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=70.37,651.73");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=125.30,759.09");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=39.94,774.87");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=95.59,673.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=24.73,710.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=37.24,682.37");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=75.56,694.18");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=99.24,737.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=117.03,703.81");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=12.98,758.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=29.88,747.37");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=66.78,771.28");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=116.41,774.85");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=165.36,732.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=30.75,728.43");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=65.04,797.33");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=31.74,790.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=44.93,793.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=172.45,709.47");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=2.31,700.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=113.27,761.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=88.76,705.85");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=104.41,777.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=3.46,685.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=10.23,768.19");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=107.27,672.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=135.69,726.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=19.80,798.80");
    }

}

