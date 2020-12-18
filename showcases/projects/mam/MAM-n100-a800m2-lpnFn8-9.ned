
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-9
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
        @display("p=590.00,555.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=630.74,557.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=661.84,532.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=583.27,491.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=569.16,495.45");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=615.19,509.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=610.39,530.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=612.15,547.68");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=624.03,620.78");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=618.85,684.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=647.20,742.53");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=613.59,736.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=574.08,747.87");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=619.15,518.70");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=540.69,599.78");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=644.54,541.72");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=593.97,489.72");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=576.90,511.21");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=656.07,428.71");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=544.50,497.18");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=560.04,536.48");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=620.22,669.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=572.63,629.75");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=629.18,734.71");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=618.00,756.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=601.43,657.13");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=671.60,524.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=657.12,499.75");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=719.01,495.49");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=494.74,474.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=586.94,464.04");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=592.81,568.63");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=577.04,546.02");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=577.59,468.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=583.17,687.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=668.90,608.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=605.24,668.81");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=568.83,647.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=505.94,724.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=520.04,496.41");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=619.88,541.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=662.47,515.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=619.52,481.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=628.52,526.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=641.86,503.26");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=632.65,496.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=582.90,525.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=706.98,587.76");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=601.83,730.48");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=717.90,687.16");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=651.24,680.67");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=532.65,687.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=503.74,505.98");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=679.37,587.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=747.13,554.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=676.98,500.34");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=531.71,442.75");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=665.46,487.41");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=625.62,609.47");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=707.46,556.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=577.74,662.85");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=697.79,642.55");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=610.56,704.40");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=687.13,795.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=661.54,765.60");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=559.95,591.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=619.57,586.09");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=696.15,534.29");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=654.58,484.86");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=584.49,584.64");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=607.66,491.24");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=636.99,461.06");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=601.91,474.19");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=643.62,654.13");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=631.58,588.85");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=643.47,752.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=657.74,719.14");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=508.88,771.66");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=538.62,581.67");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=606.23,519.49");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=717.61,557.40");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=554.64,482.45");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=533.70,514.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=527.80,506.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=614.75,575.26");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=613.56,596.65");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=657.67,556.18");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=636.13,636.62");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=661.20,738.27");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=664.47,700.30");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=560.71,729.53");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=505.20,602.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=608.54,632.17");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=652.13,623.94");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=588.28,542.69");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=558.20,571.70");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=600.22,501.68");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=659.91,591.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=702.01,566.24");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=696.61,657.90");
    }

}

