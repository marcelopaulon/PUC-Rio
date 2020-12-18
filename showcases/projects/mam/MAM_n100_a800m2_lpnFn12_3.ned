
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_3
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
        @display("p=83.43,746.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=147.22,719.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=165.59,663.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=189.69,660.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=139.36,580.02");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=117.67,558.62");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=49.02,541.47");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=101.07,554.01");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=119.34,703.41");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=95.72,741.81");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=149.78,661.57");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=117.12,580.25");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=139.71,652.37");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=165.59,629.94");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=27.36,541.22");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=92.48,544.63");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=155.44,635.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=120.28,744.15");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=82.50,796.41");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.44,716.61");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=129.23,644.68");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=271.85,614.88");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=129.40,581.46");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=105.83,494.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=55.76,502.78");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,538.81");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=109.94,657.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=122.80,778.46");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=168.05,700.25");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=155.31,684.14");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=211.57,569.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=60.48,562.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=102.87,585.85");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=66.84,506.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=83.87,469.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=128.11,694.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=66.35,710.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=203.17,688.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=213.57,619.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=275.16,677.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=158.67,564.91");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=62.99,546.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=74.13,556.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=131.55,486.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=44.15,690.66");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=40.96,679.07");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=197.05,738.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=216.15,679.88");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=182.99,673.05");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=124.42,624.76");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=214.11,533.34");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=60.03,468.39");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=149.76,501.24");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=87.63,651.93");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=110.20,729.34");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=217.72,728.20");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=192.19,718.16");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=218.17,692.07");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=83.59,500.45");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=138.26,542.61");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=54.08,625.25");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=68.45,618.34");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=75.97,645.67");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=134.90,682.75");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=150.48,708.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=177.87,628.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=139.42,706.65");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=129.46,571.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=181.37,503.87");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=10.79,505.53");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=122.37,492.94");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=31.96,717.87");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=80.56,714.51");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=170.84,720.56");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=213.26,705.08");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=176.84,693.96");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=191.80,643.94");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=150.24,555.09");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=15.28,515.45");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=127.21,532.05");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=170.35,679.48");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,796.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=112.67,686.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=192.13,684.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=254.32,615.59");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=144.08,610.06");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=143.43,591.57");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=111.19,523.62");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=36.18,604.87");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=112.96,672.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=171.61,733.83");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=108.41,770.57");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=155.16,762.08");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=180.34,712.70");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=162.34,579.75");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=181.67,572.59");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=13.48,468.23");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=22.44,612.03");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=50.41,666.24");
    }

}

