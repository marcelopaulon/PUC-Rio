
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_2
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=90.43,282.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=152.63,242.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=176.27,334.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=143.60,329.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=119.79,358.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=110.37,269.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=111.16,304.52");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=183.39,263.19");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=124.57,243.14");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=120.26,319.52");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=133.58,336.64");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=226.16,290.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=181.66,370.89");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=106.87,395.43");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=123.54,287.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=108.77,320.17");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=164.37,228.83");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=108.67,356.96");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=81.67,308.74");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=104.04,287.01");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=272.47,310.48");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=72.15,339.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=60.52,364.42");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=36.63,217.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=138.84,215.43");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=171.21,289.56");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=128.58,369.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=92.97,346.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=160.46,170.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,338.01");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=201.37,329.86");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=211.75,373.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=110.47,259.37");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=54.98,262.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=238.31,258.37");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=97.94,249.13");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=77.16,299.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=153.63,186.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=215.48,324.68");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=123.34,300.30");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=153.46,397.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=65.53,284.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=52.57,321.55");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=188.70,224.93");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=40.60,356.60");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=51.20,230.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=126.94,226.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=145.43,354.70");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=187.37,337.18");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=110.35,377.14");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=105.38,238.70");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=78.52,276.81");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=145.90,292.89");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=18.11,347.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=100.28,277.16");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=138.44,251.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=154.96,333.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=75.14,360.00");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=149.93,375.91");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=81.00,180.43");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=152.31,316.77");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=180.33,247.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=179.03,343.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=16.56,259.72");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=167.98,241.40");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=183.31,388.54");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=160.39,349.35");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=126.41,310.14");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=98.10,227.35");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=130.21,358.88");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=177.12,230.68");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=144.25,307.11");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=174.44,273.59");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=145.24,202.00");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=172.99,383.29");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=46.27,335.67");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=186.40,322.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=97.29,261.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=26.82,317.31");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=116.69,335.50");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=88.92,330.42");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=44.93,257.55");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=156.65,259.44");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=248.06,345.55");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=132.90,393.53");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=202.12,347.36");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=130.70,257.43");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=66.53,269.88");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=170.48,263.12");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=29.80,290.10");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=80.99,226.81");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=219.40,310.43");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=167.39,303.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=209.04,293.43");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=176.67,359.50");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=127.52,189.23");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=26.48,254.59");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=213.64,234.61");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=75.79,326.85");
    }

}

