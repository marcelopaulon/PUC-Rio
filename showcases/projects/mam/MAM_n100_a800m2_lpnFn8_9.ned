
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_9
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
        @display("p=130.69,704.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=39.37,689.19");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=13.24,665.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=16.97,681.62");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=43.75,667.68");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=18.19,700.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=20.85,726.99");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=88.68,794.48");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=107.40,752.73");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=119.01,751.38");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=95.85,660.63");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=105.80,722.09");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=127.29,645.96");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=178.79,707.84");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=27.61,656.60");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=27.20,673.81");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=47.22,700.16");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=42.86,729.32");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=1.94,640.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=3.87,758.24");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=145.19,785.82");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=52.55,717.33");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=144.69,757.51");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=122.61,626.51");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=87.64,762.05");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=142.64,678.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=122.54,766.08");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=95.54,734.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=84.86,703.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=14.38,712.24");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=101.14,612.70");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=30.06,745.36");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=26.24,754.84");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=6.82,792.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=127.95,723.67");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=166.28,686.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=59.94,657.65");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=25.17,710.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=61.61,677.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=121.03,684.61");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=5.46,653.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=48.14,654.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=80.62,626.18");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=71.11,573.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=74.32,644.91");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=36.84,711.04");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=159.47,732.02");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=185.12,738.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=57.26,689.00");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=116.87,714.08");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=63.13,698.95");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=136.53,734.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=122.91,788.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,681.02");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=93.22,626.80");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=5.94,590.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=3.94,719.09");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=28.96,690.70");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=2.84,769.28");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=80.39,775.37");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=176.20,742.89");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=71.97,798.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=53.46,671.51");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=176.91,681.09");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=143.75,628.36");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=203.54,697.79");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=60.01,728.02");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=11.55,739.94");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=88.26,647.95");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=97.92,686.94");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=71.63,753.08");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=30.31,723.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=162.62,780.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=104.54,788.01");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=141.80,799.93");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=58.24,627.69");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=91.20,723.38");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=68.30,628.40");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=76.56,680.78");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=81.55,602.50");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=20.05,581.99");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=72.00,706.30");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=49.98,638.60");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=6.38,684.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=4.49,702.27");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=17.39,796.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=184.43,796.34");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=57.47,754.40");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=106.77,678.86");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=157.91,791.99");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=70.37,729.11");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=162.49,697.61");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=85.44,637.24");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=13.53,604.62");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=40.45,750.84");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=105.31,654.37");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=33.30,626.83");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=41.13,797.66");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=100.96,799.66");
    }

}

