
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_5
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
        @display("p=142.49,781.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=148.61,772.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=168.48,783.77");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=133.52,733.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=116.48,680.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=97.51,736.65");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=156.76,679.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=146.88,591.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=74.76,605.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=71.46,583.72");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=119.61,548.20");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=112.84,558.74");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=8.23,655.49");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=23.30,648.96");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=82.82,705.58");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=159.78,761.19");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=159.50,744.68");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=154.49,729.93");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=175.53,725.50");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=174.63,759.68");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=149.65,708.69");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=137.84,710.15");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=176.93,735.51");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=110.72,782.78");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=31.16,698.28");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=67.17,735.81");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=198.17,708.95");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=117.25,716.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=118.51,729.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=94.80,676.21");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=53.09,677.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=154.20,662.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=152.95,624.86");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=132.88,609.10");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=92.77,571.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=72.37,478.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=100.90,558.66");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=93.75,659.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=80.50,570.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=28.17,640.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=108.48,763.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=164.85,723.27");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=132.43,751.66");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=235.06,750.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=174.76,701.26");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=214.79,658.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=79.40,746.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=99.51,773.63");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=82.72,790.21");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=152.59,647.12");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=138.61,742.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=155.52,786.73");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=201.90,789.02");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=216.67,761.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=100.53,723.43");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=86.15,689.66");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=206.85,739.79");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=166.54,591.46");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=168.75,605.45");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=68.45,514.93");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=110.41,511.36");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=37.01,568.29");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=18.96,685.91");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=17.82,612.87");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=79.42,673.23");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=136.17,689.78");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=205.84,760.23");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=191.75,781.51");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=216.99,698.90");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=127.54,741.83");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=143.41,720.82");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=95.41,757.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=168.58,641.60");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=164.70,712.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=52.40,728.47");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=179.88,771.12");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=160.23,690.40");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=213.84,717.56");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=221.19,781.04");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=107.90,607.54");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=110.96,752.10");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=141.15,650.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=158.84,611.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=78.84,550.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=134.76,589.73");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=101.27,585.89");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=44.34,542.21");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=23.65,568.45");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=14.66,746.05");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=85.14,720.46");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=104.96,708.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=181.10,784.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=190.63,653.06");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=178.18,686.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=246.03,762.38");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=143.25,762.71");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=107.58,634.21");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=177.77,665.79");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=116.75,794.93");
    }

}

