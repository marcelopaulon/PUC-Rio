
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-3
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
        @display("p=664.00,405.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=690.78,466.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=694.18,561.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=668.66,581.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=642.72,613.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=617.47,708.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=691.29,689.53");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=713.01,621.73");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=700.20,653.31");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=779.62,593.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=769.32,545.98");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=864.20,568.61");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=896.10,602.29");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=905.82,569.00");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=814.72,558.08");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=797.95,538.68");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=798.87,579.96");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=777.21,536.49");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=780.47,560.85");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=865.06,609.38");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=786.71,646.84");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=768.72,653.85");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=769.62,713.24");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=765.65,726.92");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=777.37,701.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=706.68,418.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=621.20,506.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=662.04,607.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=691.06,540.24");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=655.59,642.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=614.59,720.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=603.34,701.87");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=692.02,625.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=656.80,632.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=718.87,546.86");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=754.02,525.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=856.14,557.60");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=963.86,600.71");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=956.99,590.77");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=844.48,581.37");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=812.28,536.34");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=726.41,638.80");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=801.11,502.58");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=759.59,658.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=866.27,590.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=802.71,657.18");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=692.13,591.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=861.45,727.81");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=764.40,698.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=842.13,671.37");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=661.40,419.85");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=644.30,443.91");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=672.58,479.04");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=719.75,573.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=681.64,641.97");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=661.33,702.13");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=701.66,729.62");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=638.85,595.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=714.47,679.85");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=817.37,631.02");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=739.82,569.76");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=846.60,628.17");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=827.78,640.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=936.76,646.08");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=788.23,544.04");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=798.29,633.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=793.71,567.64");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=802.40,453.29");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=762.41,516.07");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=823.12,524.78");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=841.42,659.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=730.78,681.29");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=808.41,766.42");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=750.24,675.57");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=703.61,760.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=630.95,415.59");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=662.43,450.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=694.51,497.30");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=667.68,622.05");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=655.45,621.61");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=610.88,679.92");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=636.98,745.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=709.44,635.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=760.19,588.63");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=822.66,614.12");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=795.16,487.89");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=930.12,590.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=831.63,669.77");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=866.29,545.90");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=829.10,536.29");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=743.44,527.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=770.75,598.97");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=830.77,479.36");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=854.78,593.66");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=899.14,647.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=707.45,670.27");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=775.67,640.96");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=747.25,775.92");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=759.61,753.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=856.50,657.76");
    }

}

