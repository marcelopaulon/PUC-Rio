
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_6
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
        @display("p=132.89,725.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=219.02,707.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=221.77,686.58");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=196.57,615.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=138.46,684.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=174.52,706.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=155.93,729.55");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=160.89,767.23");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=146.66,696.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=123.37,616.02");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=203.19,624.73");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=242.68,662.01");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=257.11,671.63");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=282.24,765.30");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=318.11,695.96");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=322.68,674.86");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=337.53,684.65");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=331.73,780.46");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=346.08,752.50");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=341.52,741.64");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=435.58,738.24");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=441.30,752.04");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=390.38,706.38");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=414.13,746.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=112.80,695.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=179.95,763.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=276.29,746.36");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=291.45,673.69");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=163.00,546.06");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=40.25,701.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=198.96,670.73");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=168.70,653.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=123.65,733.80");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=188.77,751.00");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=112.66,610.79");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=176.12,719.64");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=161.90,718.19");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=212.47,738.04");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=342.31,775.95");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=353.22,671.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=376.87,752.40");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=405.14,680.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=241.29,756.62");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=358.99,767.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=351.19,687.91");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=416.64,675.26");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=477.25,746.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=368.21,689.02");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=441.70,770.98");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=102.18,679.19");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=111.58,733.55");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=235.54,704.57");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=289.70,719.03");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=146.36,640.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=103.31,663.23");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=93.66,688.68");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=172.08,757.42");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=76.12,725.27");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=92.81,638.73");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=83.97,605.06");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=258.07,626.01");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=209.57,690.50");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=305.17,673.29");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=308.68,709.60");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=406.35,655.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=311.58,644.08");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=407.78,633.32");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=402.80,726.35");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=274.36,790.34");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=265.78,763.42");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=502.04,699.14");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=441.48,790.42");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=454.54,761.25");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=390.59,754.13");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=59.03,639.83");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=84.59,750.61");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=296.83,707.38");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=154.44,754.28");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=159.71,688.17");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=113.11,599.71");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=166.82,697.90");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=167.49,729.24");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=181.55,734.83");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=65.33,705.57");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=58.32,548.88");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=240.81,623.43");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=247.27,631.61");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=208.68,658.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=354.52,701.97");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=325.68,723.09");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=281.84,727.97");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=330.83,665.87");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=364.60,742.52");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=330.87,769.20");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=261.67,722.17");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=380.16,789.59");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=463.71,684.05");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=371.73,617.69");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=464.96,754.33");
    }

}

