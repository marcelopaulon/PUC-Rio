
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_4
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
        @display("p=127.65,686.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=215.19,721.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=278.49,688.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=256.91,686.54");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=264.55,712.97");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=326.71,745.51");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=262.17,786.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=241.26,744.86");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=98.67,714.04");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=65.54,662.24");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=182.70,752.12");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=276.98,779.50");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=245.07,698.76");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=262.07,699.83");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=277.69,747.02");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=308.46,767.67");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=269.18,755.47");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=64.61,675.95");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=128.47,625.73");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=187.00,651.36");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=268.12,742.80");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=274.30,705.47");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=330.73,715.91");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=401.37,722.74");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=210.04,739.62");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=193.76,691.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=52.98,708.81");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=137.46,683.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=220.73,749.35");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=293.53,667.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=323.46,651.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=224.87,715.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=376.43,761.85");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=250.96,773.87");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=253.99,745.97");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=134.32,717.20");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=206.33,657.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=192.36,740.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=298.48,602.44");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=218.45,623.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=232.35,660.37");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=311.56,721.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=244.16,733.18");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=206.07,775.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=100.44,740.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=151.16,758.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=245.92,794.15");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=305.08,780.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=294.86,713.80");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=304.29,799.73");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=370.43,791.24");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=285.54,733.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=313.19,686.29");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=103.40,659.75");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=124.31,712.43");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=224.37,735.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=364.92,680.74");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=230.22,725.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=295.95,742.00");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=238.40,714.43");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=258.15,765.20");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=293.13,702.90");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=102.87,679.46");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=137.11,697.13");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=152.76,774.04");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=270.37,663.44");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=261.58,653.68");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=281.17,796.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=337.06,741.63");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=329.58,773.63");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=284.62,677.65");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=100.41,784.65");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=113.94,691.55");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=179.70,728.10");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=281.91,634.37");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=307.28,661.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=174.04,694.08");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=393.37,786.09");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=234.84,760.65");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=203.29,764.49");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=196.31,721.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=182.18,711.39");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=208.24,729.75");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=297.59,727.70");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=341.82,721.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=216.11,655.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=311.43,755.62");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=281.48,768.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=238.16,779.49");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=56.28,694.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=198.25,631.24");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=223.64,794.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=332.85,619.26");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=346.09,701.79");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=254.36,670.58");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=410.25,795.58");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=316.71,785.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=221.71,782.32");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=119.61,700.44");
    }

}

