
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn1-8
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
        @display("p=243.00,793.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=258.85,756.71");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=205.39,791.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=215.09,767.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=189.26,770.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=256.22,777.32");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=164.79,762.58");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=127.95,782.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=109.85,782.85");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=69.65,716.20");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=85.25,758.12");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=74.37,752.62");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=68.37,778.85");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=87.60,797.14");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=121.08,753.14");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=39.47,783.29");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=55.45,737.13");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=44.75,721.01");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=151.61,772.04");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=22.51,781.02");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=38.26,757.94");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=28.62,761.01");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=56.50,761.87");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=38.32,709.61");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=101.83,645.54");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=44.86,799.57");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=99.63,697.20");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=166.16,719.68");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=154.27,705.55");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=62.38,747.78");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=52.24,696.54");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=85.83,606.18");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=79.40,669.12");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=83.07,683.04");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=117.71,725.59");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=149.56,719.51");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=99.72,722.67");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=13.98,737.34");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=25.01,748.08");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=34.49,650.93");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=17.67,617.92");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=12.89,592.43");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=43.17,579.96");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=116.56,536.45");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=62.39,520.78");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=51.24,572.47");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=105.85,515.79");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=185.33,554.14");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=204.43,615.48");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=299.14,623.07");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=380.66,644.70");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=399.10,630.74");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=416.30,624.19");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=365.35,648.79");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=330.52,603.82");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=338.48,583.54");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=333.12,530.26");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=391.91,544.75");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=358.13,602.23");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=324.39,592.04");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=342.22,513.00");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=316.97,511.65");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=366.66,533.73");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=292.96,552.56");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=257.59,613.78");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=261.16,540.04");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=266.38,470.72");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=203.00,490.03");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=239.82,566.45");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=175.97,568.79");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=159.90,589.93");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=133.69,684.85");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=137.84,649.44");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=149.57,691.08");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=103.61,732.01");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=104.64,771.24");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=13.18,776.76");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=60.73,708.34");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=25.49,640.34");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=33.71,661.42");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=68.84,736.43");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=87.75,722.24");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=81.18,643.44");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=111.64,582.04");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=67.25,563.59");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=134.92,491.57");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=162.43,444.32");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=124.12,439.61");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=102.19,384.22");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=58.10,372.93");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=91.95,380.28");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=135.66,418.74");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=173.49,377.84");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=149.19,388.12");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=155.68,399.98");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=135.39,472.92");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=90.94,554.00");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=77.30,455.97");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=111.06,414.55");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=56.90,422.30");
    }

}

