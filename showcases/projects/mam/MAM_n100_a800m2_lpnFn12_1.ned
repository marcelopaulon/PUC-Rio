
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_1
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
        @display("p=138.09,716.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=149.51,794.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,782.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=181.69,790.60");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=158.06,768.97");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=123.00,747.13");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=74.05,743.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=49.34,727.18");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=36.51,747.87");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=57.35,740.86");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=144.25,732.82");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=136.91,741.35");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=254.49,791.52");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=161.17,755.33");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=130.19,731.69");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=45.28,659.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=84.66,656.18");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=99.29,686.20");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=198.00,752.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=209.71,734.58");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=139.42,799.89");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=234.69,754.36");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=173.11,747.25");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=109.35,743.67");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=42.81,739.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=88.64,678.34");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=35.98,641.76");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=154.79,732.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=68.72,795.15");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=86.41,708.55");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=160.57,700.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=172.45,770.99");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=54.03,702.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,691.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=33.58,733.10");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=59.62,693.80");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=97.64,752.88");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=110.92,783.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=112.57,710.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=120.10,769.74");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=116.54,758.77");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=209.26,754.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=12.97,745.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=123.92,791.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=6.78,669.11");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=63.86,771.07");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=77.60,756.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=177.80,779.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=238.50,791.65");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=166.64,797.08");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=110.51,727.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=74.96,727.64");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=6.72,771.29");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=178.15,702.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=141.33,701.21");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=145.74,749.42");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=206.62,784.38");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=195.08,782.07");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=196.85,703.01");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=162.14,741.79");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=94.76,742.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=24.99,670.71");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=11.24,705.63");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=218.92,746.48");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=164.66,718.98");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=50.45,779.11");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=185.62,762.97");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=197.52,716.84");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=163.99,787.08");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=27.27,657.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=37.40,690.76");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=10.05,735.98");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=182.20,725.94");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=191.63,799.82");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=170.73,729.69");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=86.86,761.78");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=179.34,671.31");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=48.22,749.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=18.23,779.66");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=61.78,678.94");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=112.49,659.95");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=70.65,705.15");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=133.26,769.50");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=64.81,728.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=107.93,772.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=147.96,771.90");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=123.79,696.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=100.14,674.85");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=93.75,775.47");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=150.84,674.94");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=207.92,768.00");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=218.28,761.18");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=111.31,695.55");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=210.09,797.07");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=123.43,714.81");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=98.37,723.25");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=48.29,685.51");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=7.50,655.33");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=96.16,642.86");
    }

}

