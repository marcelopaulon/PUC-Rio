
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-3
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
        @display("p=23.00,773.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=63.60,781.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,782.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=108.32,769.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=117.48,776.24");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=74.20,742.61");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=72.09,719.00");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=113.81,746.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=82.61,703.13");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=83.07,798.63");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=6.16,798.13");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=40.48,771.02");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=185.10,718.46");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=133.84,757.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=55.61,775.10");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=120.64,661.25");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=43.74,761.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=88.99,732.93");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=11.55,756.33");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=97.06,717.59");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=64.49,768.36");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=111.30,787.98");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=83.16,762.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=66.83,798.33");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=22.87,734.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=104.12,733.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=69.75,677.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=33.91,787.50");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=50.57,729.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=77.68,790.03");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=109.84,755.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=68.69,759.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=122.51,713.45");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=89.69,663.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=99.39,743.44");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=100.45,674.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=15.73,784.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=78.42,775.04");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=42.62,798.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=65.85,688.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=122.73,789.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=37.55,677.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=148.82,749.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=121.15,732.14");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=25.12,685.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=51.60,739.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=162.30,768.39");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=97.08,768.41");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=155.55,702.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=197.23,773.28");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=61.02,730.97");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=17.80,798.59");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=101.00,790.67");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=76.71,689.99");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=53.57,789.42");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=134.51,741.62");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=46.38,709.18");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=70.00,700.39");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=140.69,779.27");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=81.17,673.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=56.58,750.30");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=144.19,763.42");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=103.23,779.64");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=28.86,748.17");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=1.36,741.58");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=31.91,717.00");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=195.47,762.61");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=160.20,735.62");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=153.54,723.04");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=142.37,689.33");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=116.78,693.97");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=35.12,695.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=44.44,781.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=83.18,749.51");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=175.03,785.90");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=109.89,701.94");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=127.25,701.35");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=70.64,656.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=85.78,721.04");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=200.07,697.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=113.27,611.68");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=4.82,769.83");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=129.09,799.90");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=132.96,772.92");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=110.40,720.56");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=56.57,799.11");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=59.55,701.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=24.65,697.80");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=119.90,755.88");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=82.73,644.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=31.43,727.07");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=10.86,708.23");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=93.87,697.75");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=146.29,799.50");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=158.62,780.33");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=135.09,725.82");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=14.57,726.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=94.82,752.68");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=115.39,638.28");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=43.31,747.42");
    }

}

