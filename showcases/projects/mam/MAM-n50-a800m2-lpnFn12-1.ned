
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-1
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
        @display("p=723.00,752.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=708.67,739.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=710.39,726.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=759.55,742.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=762.62,761.91");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=788.86,716.35");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=764.55,733.48");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=739.01,654.28");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=748.16,746.30");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=776.51,789.73");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=767.13,717.81");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=718.24,761.53");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=722.14,664.87");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=754.39,714.63");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=759.87,788.16");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=671.29,753.40");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=721.23,695.66");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=798.40,770.90");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=791.43,700.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=769.91,708.03");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=776.30,699.63");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=706.28,773.31");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=737.79,720.71");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=766.55,749.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=746.14,763.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=729.74,744.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=744.81,732.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=701.97,671.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=692.64,683.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=792.18,727.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=721.20,718.65");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=761.23,660.52");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=644.50,756.54");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=703.71,705.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=786.86,774.02");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=778.25,744.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=708.19,716.48");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=678.24,678.63");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=790.52,661.28");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=722.30,781.81");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=721.88,736.09");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=713.36,749.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=741.16,670.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=685.26,709.22");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=693.64,795.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=678.83,768.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=680.61,727.70");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=697.07,754.15");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=735.51,786.55");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=748.84,785.27");
    }

}

