
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_6
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
        @display("p=65.10,684.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=59.04,746.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=64.24,773.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=128.80,730.73");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=66.51,721.56");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=23.11,662.64");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=24.28,782.35");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=23.70,747.21");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=135.62,742.92");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=54.58,715.65");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=64.26,700.80");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=77.21,750.82");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=83.98,774.57");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=189.31,771.46");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=125.35,769.19");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=45.38,677.11");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=4.26,785.26");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=45.78,749.53");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=212.43,763.65");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=26.01,709.60");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=79.62,691.47");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=157.28,739.65");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=6.45,716.64");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=136.16,719.72");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=102.50,678.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=56.98,690.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=45.37,732.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=15.16,701.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=208.41,706.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=63.75,755.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=115.11,705.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=66.65,789.89");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=88.67,784.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=115.40,749.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=94.76,638.06");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=97.97,711.91");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=48.24,697.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=134.76,703.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=151.79,722.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=109.45,761.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=7.93,764.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=41.99,790.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=35.06,684.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=143.22,788.16");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=116.59,721.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=66.79,660.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=114.06,671.26");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=55.32,780.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=96.99,792.85");
    }

}

