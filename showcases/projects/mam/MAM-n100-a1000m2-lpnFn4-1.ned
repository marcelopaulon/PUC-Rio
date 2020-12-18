
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-1
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
        @display("p=242.00,757.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=267.53,739.90");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=334.97,763.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=391.16,771.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=425.39,814.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=431.01,727.43");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=389.28,699.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=401.95,637.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=347.93,621.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=341.47,672.40");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=296.30,692.49");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=274.65,712.43");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=236.10,743.89");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=286.07,718.82");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=320.29,645.94");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=234.80,672.72");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=233.34,767.08");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=217.67,776.26");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=252.33,699.14");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=257.64,679.59");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=261.91,710.99");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=248.31,779.27");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=247.90,733.41");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=239.42,726.81");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=281.47,655.87");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=256.35,837.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=296.10,709.81");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=362.26,811.56");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=373.74,706.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=391.56,790.68");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=518.96,730.28");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=399.67,761.19");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=442.00,614.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=311.66,670.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=338.80,683.98");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=281.69,608.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=311.78,716.49");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=199.03,743.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=374.08,721.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=393.42,659.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=205.78,635.54");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=224.72,698.65");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=162.73,780.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=232.14,613.91");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=300.62,654.30");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=270.90,647.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=198.87,784.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=199.54,806.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=240.76,714.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=331.64,624.58");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=170.93,767.14");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=272.79,730.87");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=370.69,799.65");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=426.24,691.93");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=503.34,859.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=443.62,658.94");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=469.32,684.02");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=334.41,584.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=407.10,688.25");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=293.54,618.14");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=351.25,716.45");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=210.26,737.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=229.55,733.52");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=198.47,730.52");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=305.91,682.17");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=256.50,727.51");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=282.77,812.92");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=211.99,854.90");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=258.37,650.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=277.18,683.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=236.32,801.28");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=181.14,742.92");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=185.86,677.78");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=195.29,796.06");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=286.44,627.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=258.44,764.97");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=332.64,697.29");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=309.85,736.99");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=330.27,730.39");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=381.81,747.03");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=408.71,724.06");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=366.31,730.57");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=396.45,648.68");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=387.23,568.60");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=314.54,602.68");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=327.65,677.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=279.58,768.81");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=253.89,793.74");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=321.17,685.95");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=287.39,639.15");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=227.18,663.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=287.35,846.92");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=204.87,699.74");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=221.88,642.41");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=331.65,666.97");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=163.84,713.64");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=232.43,812.71");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=259.59,784.68");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=207.83,714.01");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=312.73,571.88");
    }

}

