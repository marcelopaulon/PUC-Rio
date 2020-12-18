
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_7
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
        @display("p=70.68,678.97");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=56.13,724.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=9.07,784.30");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=21.11,765.23");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=29.62,755.55");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=57.56,697.87");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=33.48,679.78");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=21.81,677.13");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=112.83,664.32");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=80.13,654.61");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=64.81,738.53");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=22.82,791.76");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=41.34,726.48");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=48.02,752.31");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=156.96,704.37");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=110.95,738.78");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=3.06,643.54");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=84.52,744.84");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=109.90,709.09");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=51.61,643.13");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=37.70,785.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=69.86,722.20");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=87.84,757.03");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=51.49,775.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=66.98,666.15");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=73.50,600.20");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=90.98,713.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=55.71,664.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=113.19,775.61");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=79.76,792.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=90.29,734.01");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=42.65,796.17");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=122.28,714.59");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=14.72,705.28");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=55.92,762.67");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=61.03,649.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=148.19,674.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=24.92,694.01");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=71.81,753.84");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=29.90,799.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=42.15,670.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=43.56,684.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=117.09,673.90");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=62.90,622.04");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=86.37,627.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=125.92,724.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=54.77,713.43");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=37.83,740.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=70.48,786.18");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=66.29,777.03");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=126.58,686.53");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=9.45,720.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=55.47,675.17");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=152.61,633.60");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=54.70,580.38");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=55.24,790.12");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=46.59,699.90");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=5.10,760.72");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=23.55,742.72");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=88.85,693.01");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=41.13,596.28");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=26.92,579.76");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=141.13,636.45");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=68.07,691.84");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=79.23,774.62");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=37.09,771.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=2.87,729.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=33.73,659.81");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=22.79,650.98");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=7.06,687.44");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=105.09,632.06");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=113.61,694.05");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=168.88,666.63");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=102.11,772.79");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=71.15,707.52");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=5.05,677.04");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=124.84,746.54");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=34.19,613.89");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=88.97,677.25");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=83.13,667.64");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=128.68,662.75");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=150.38,719.01");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=89.63,797.49");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=23.42,779.29");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=12.03,770.64");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=17.99,727.11");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=137.39,757.20");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=104.36,615.23");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=11.76,669.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=189.79,712.49");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=165.53,686.82");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=88.91,641.98");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=11.06,794.18");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=13.92,749.74");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=42.05,760.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=73.05,619.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=86.68,603.25");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=20.08,626.79");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=178.92,672.16");
    }

}

