
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_0
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
        @display("p=108.00,623.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=157.15,675.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=240.12,703.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=224.49,774.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=150.92,755.32");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=143.95,765.40");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=241.41,750.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=211.21,687.99");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=31.29,698.63");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=93.98,586.23");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=239.74,638.53");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=255.96,722.78");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=191.47,719.62");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=123.94,737.42");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=52.82,762.15");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=171.43,751.85");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=181.37,676.77");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,607.80");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=153.79,565.29");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=205.03,674.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=218.63,741.72");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=168.81,741.91");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=83.51,740.31");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=147.27,681.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=232.55,690.56");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=203.10,699.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=87.50,661.76");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=38.24,600.49");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=139.43,725.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=184.18,742.81");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=265.38,777.63");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=87.05,761.76");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=170.43,782.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=201.09,768.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=184.42,776.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=172.19,650.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=121.34,602.26");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=191.45,608.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=332.17,674.13");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=211.41,784.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=116.01,750.40");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=183.79,794.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=294.12,728.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=248.97,738.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=146.67,702.85");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=117.85,568.64");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=131.65,668.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=287.95,773.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=245.85,778.03");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=170.66,763.69");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=121.46,772.71");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=290.08,714.15");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=294.97,650.82");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=72.71,682.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=150.77,659.10");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=225.33,706.55");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=259.34,657.96");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=232.03,754.55");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=73.19,742.70");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=130.14,760.06");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=218.41,679.25");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=205.11,712.79");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=89.31,705.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=81.40,537.22");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=165.95,625.38");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=267.28,683.70");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=310.77,759.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=136.01,750.88");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=163.34,698.94");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=301.13,719.75");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=225.68,611.02");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=74.21,693.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=122.54,687.05");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=192.61,636.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=225.76,657.05");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=250.84,756.81");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=72.65,720.66");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=109.29,780.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=232.76,718.67");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=220.23,716.24");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=15.37,724.38");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=64.96,636.18");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=92.06,750.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=192.54,691.85");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=267.62,751.78");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=233.21,783.74");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=138.50,778.52");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=338.46,769.59");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=246.52,710.78");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=45.70,675.34");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=107.94,636.38");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=133.51,609.91");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=167.87,681.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=302.51,781.82");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=176.04,720.26");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=150.98,739.10");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=273.65,792.59");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=131.91,716.27");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=102.85,712.10");
    }

}

