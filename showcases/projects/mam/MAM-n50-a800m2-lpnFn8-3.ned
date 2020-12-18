
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-3
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
        @display("p=135.00,513.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=124.68,516.45");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=187.37,583.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=207.01,567.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=199.86,548.23");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=212.22,587.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=146.14,554.20");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=149.38,510.37");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=112.97,521.48");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=183.93,597.51");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=248.59,563.98");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=168.69,515.24");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=121.47,613.74");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=81.07,534.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=144.43,568.72");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=64.79,551.53");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=214.22,547.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=202.51,599.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=265.73,532.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=194.68,557.32");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=131.63,485.12");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=223.35,555.08");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=40.10,473.41");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=208.57,649.07");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=224.89,577.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=243.52,541.96");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=179.23,569.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=155.52,532.92");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=155.93,499.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=101.96,507.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=252.32,607.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=159.37,563.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=240.72,577.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=229.53,543.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=118.86,562.01");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=90.93,490.41");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=202.23,518.73");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=245.41,509.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=284.83,578.51");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=272.68,501.85");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=198.95,495.45");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=112.54,540.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=139.68,455.25");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=70.79,525.02");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=271.95,539.88");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=137.52,592.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=132.47,530.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=255.86,619.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=133.63,579.67");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=143.58,439.79");
    }

}

