
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-1
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
        @display("p=725.00,709.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=671.53,652.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=663.36,642.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=629.02,703.83");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=642.22,693.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=639.40,763.09");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=657.62,741.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=693.53,716.52");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=673.14,714.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=624.43,719.20");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=610.18,786.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=572.20,786.01");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=561.03,788.23");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=718.08,645.14");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=686.89,708.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=658.97,706.07");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=657.11,759.99");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=618.35,684.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=679.98,776.77");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=614.56,698.04");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=660.65,691.56");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=744.14,780.68");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=644.86,750.30");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=589.73,777.10");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=552.16,710.27");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=549.20,747.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=689.24,742.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=648.05,660.64");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=603.15,707.73");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=630.60,758.24");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=693.02,771.83");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=605.50,691.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=667.83,749.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=689.04,624.77");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=669.02,787.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=639.90,714.78");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=604.17,724.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=529.97,725.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=522.76,758.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=709.99,714.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=705.74,652.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=623.26,620.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=563.35,648.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=612.33,739.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=653.89,769.67");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=688.59,661.23");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=719.33,697.99");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=674.34,676.27");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=671.26,739.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=617.60,770.51");
    }

}

