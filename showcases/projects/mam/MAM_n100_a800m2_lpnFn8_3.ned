
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_3
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
        @display("p=105.31,661.61");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=23.14,696.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=49.55,695.14");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=43.85,721.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=56.42,748.18");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=84.48,778.67");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=78.19,729.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=84.04,663.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=121.23,667.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=130.81,649.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=40.17,621.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=2.88,611.04");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=53.13,710.37");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=111.44,644.67");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=46.49,636.90");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=139.33,724.69");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=101.04,721.72");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=17.36,764.83");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=36.70,782.17");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=70.07,745.93");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=71.99,679.07");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=118.02,691.77");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=77.12,628.36");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=24.32,623.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=63.47,634.12");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=71.73,604.36");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=165.33,716.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=18.93,716.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=23.06,660.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=138.53,694.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=63.77,762.92");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=109.42,788.45");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=110.96,776.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=63.44,653.12");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=82.63,718.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=121.99,575.33");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=56.87,548.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=3.33,624.43");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=100.42,685.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=151.01,593.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=89.16,699.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=37.82,666.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=39.86,690.39");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=45.45,752.32");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=81.97,765.12");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=131.73,707.63");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=48.88,675.15");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=156.41,625.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=212.38,625.61");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=59.49,665.47");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=35.22,575.74");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=158.18,691.58");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=51.20,614.51");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=28.66,650.24");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=107.37,732.87");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=40.14,741.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=127.51,779.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=100.83,776.81");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=77.01,786.45");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=167.11,667.12");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=115.78,657.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=212.04,675.62");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=104.69,630.79");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=46.42,592.39");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=114.96,715.10");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=159.92,587.38");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=61.87,622.13");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=69.58,698.33");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=6.05,675.06");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=21.16,775.84");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=99.83,792.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=11.48,704.39");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=92.12,627.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=145.57,669.39");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=181.97,605.07");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=21.40,554.57");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=15.73,632.36");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=29.54,768.84");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=202.20,651.45");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=2.10,714.69");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=37.82,703.60");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=34.99,728.52");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=0.65,747.96");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=103.28,756.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=34.56,640.99");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=125.60,595.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=128.55,682.33");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=73.84,586.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=58.20,588.89");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=20.90,568.59");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=157.14,641.98");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=180.77,632.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=0.50,785.52");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=68.15,723.06");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=97.09,670.12");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=92.00,733.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=73.38,797.30");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=157.92,672.01");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=107.44,675.70");
    }

}

