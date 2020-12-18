
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_7
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
        @display("p=197.32,690.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=174.67,780.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=159.91,794.16");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=229.22,725.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=208.78,745.72");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=299.32,778.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=369.69,795.70");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=291.14,793.38");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=258.25,755.19");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=277.42,738.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=294.25,761.55");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=299.79,693.58");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=92.01,680.01");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=206.60,702.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=196.41,753.72");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=216.07,761.89");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=132.92,738.97");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=208.29,768.61");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=301.84,735.71");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=342.18,784.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=322.98,772.97");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=281.13,721.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=324.99,700.03");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=243.40,678.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=277.59,652.19");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=121.82,703.07");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=181.33,772.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=121.89,767.83");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=208.15,718.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=141.03,701.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=284.35,700.96");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=314.87,728.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=455.53,788.09");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=260.10,772.86");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=330.89,739.25");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=329.38,751.58");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=274.33,682.71");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=384.65,690.24");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=36.59,636.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=194.56,629.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=214.27,694.92");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=91.46,785.30");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=236.22,709.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=263.95,681.50");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=307.41,790.12");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=385.55,717.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=359.49,759.43");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=199.64,787.95");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=325.24,795.63");
    }

}

