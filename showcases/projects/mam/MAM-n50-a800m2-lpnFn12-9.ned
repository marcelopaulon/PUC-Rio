
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-9
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
        @display("p=676.00,523.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=657.77,559.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=701.82,648.78");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=713.94,735.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=716.92,662.74");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=652.51,576.64");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=735.78,572.09");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=712.70,648.58");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=731.06,746.32");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=664.14,647.52");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=681.23,511.16");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=572.51,573.90");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=652.85,587.90");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=667.23,727.50");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=762.59,692.28");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=700.86,522.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=673.43,534.97");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=708.52,693.60");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=743.24,718.27");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=730.13,683.18");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=749.34,469.45");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=687.05,565.05");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=701.06,709.63");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=771.81,655.46");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=634.08,680.69");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=663.54,518.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=647.48,539.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=776.96,697.37");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=702.32,668.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=730.88,610.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=686.04,589.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=653.53,626.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=665.19,624.51");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=665.06,660.46");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=653.56,686.75");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=694.81,610.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=737.69,561.97");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=720.58,714.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=680.31,792.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=758.52,673.07");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=644.55,521.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=690.69,528.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=786.12,657.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=712.33,722.69");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=685.84,635.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=731.84,455.29");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=670.02,585.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=697.74,658.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=723.37,727.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=751.50,710.96");
    }

}

