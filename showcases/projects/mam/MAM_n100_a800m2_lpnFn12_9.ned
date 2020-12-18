
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_9
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
        @display("p=141.46,734.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=167.56,720.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=84.33,683.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=48.72,629.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=22.35,547.06");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=44.30,571.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=95.08,644.59");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=162.63,665.09");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=89.80,704.75");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=162.28,700.40");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=196.15,702.24");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=34.14,709.47");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=62.32,665.86");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=57.63,505.69");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=61.63,584.62");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=84.66,638.91");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=219.86,664.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=132.40,612.08");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=143.40,720.60");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=174.49,659.13");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=54.61,733.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=15.53,656.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=109.07,511.00");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=14.29,486.26");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=65.28,650.78");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=220.89,676.28");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=55.13,644.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=148.08,681.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=174.19,775.56");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=75.41,732.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=11.58,563.26");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=14.28,475.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=35.62,599.12");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=105.93,547.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=135.61,631.39");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=73.56,643.69");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=140.59,747.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=178.65,729.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=94.64,666.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=90.44,623.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=32.02,538.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=73.22,627.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=124.53,670.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=146.07,697.12");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=70.14,706.04");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=117.60,694.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=187.83,638.24");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=126.44,687.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=18.52,534.36");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=90.41,523.63");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=139.99,554.81");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=62.03,689.61");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=232.51,732.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=187.73,746.74");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=61.79,792.21");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=109.36,772.57");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=23.22,677.62");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=36.46,637.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=43.18,526.74");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=65.99,512.84");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=127.77,645.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=157.70,674.67");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=48.19,769.43");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=203.12,720.13");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=97.73,751.86");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=178.01,712.57");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=37.52,586.90");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=13.40,507.23");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=143.77,576.03");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=124.29,579.53");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=182.91,621.94");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=11.40,692.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=194.54,758.50");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=207.99,739.73");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=73.24,694.06");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=35.96,615.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=17.04,580.16");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=75.97,593.37");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=132.86,698.30");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=161.43,690.17");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=57.44,745.23");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=131.48,735.70");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=162.90,773.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=119.46,631.38");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=64.70,619.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=7.28,543.58");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=98.40,511.09");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=128.82,711.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=210.35,616.32");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=169.67,682.25");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=198.05,793.13");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=244.30,722.34");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=105.10,612.39");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=42.89,677.44");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=37.36,518.55");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=76.61,489.59");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=112.78,577.78");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=118.91,609.96");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=166.52,746.01");
    }

}

