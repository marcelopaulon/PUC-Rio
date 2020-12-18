
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_5
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
        @display("p=57.61,646.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=117.38,669.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=191.90,685.42");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=200.63,677.05");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=266.82,711.31");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=341.19,753.79");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=268.80,730.56");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=324.48,728.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=332.13,636.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=266.79,631.37");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=301.36,671.35");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=270.68,758.20");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=149.94,766.53");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=46.30,625.05");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=94.18,644.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=151.47,705.85");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=115.95,691.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=280.61,679.54");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=297.32,697.93");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=235.21,737.16");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=308.39,727.28");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=313.29,642.20");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=327.05,617.22");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=314.73,596.65");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=198.17,779.02");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=42.86,699.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=7.18,568.19");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=53.54,665.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=236.48,687.10");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=194.14,764.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=208.94,712.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=368.25,679.80");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=274.80,785.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=274.88,744.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=352.68,720.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=246.23,586.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=324.62,745.44");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=230.46,711.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=132.69,722.49");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=39.73,632.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=199.32,658.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=185.11,704.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=177.48,668.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=331.05,786.31");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=378.62,792.04");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=304.53,717.59");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=299.32,731.61");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=343.46,651.53");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=177.85,651.09");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=331.14,656.65");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=259.64,742.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=133.32,671.19");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=104.78,619.59");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,626.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=169.17,716.51");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=231.44,654.37");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=218.02,758.71");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=316.65,752.16");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=281.99,777.98");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=320.51,684.66");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=271.45,660.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=300.30,638.23");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=294.75,658.48");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=308.16,707.46");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=136.96,688.08");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=121.68,635.40");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=160.84,607.18");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=205.07,769.09");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=206.17,697.31");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=296.71,750.92");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=414.40,765.91");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=243.05,705.73");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=271.02,689.78");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=371.06,652.33");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=263.91,546.26");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=282.89,665.24");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=343.23,701.38");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=73.74,644.13");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=31.23,577.03");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=198.88,644.14");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=250.31,753.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=167.68,588.34");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=280.45,632.70");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=365.35,723.52");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=345.46,793.50");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=286.62,738.03");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=277.09,650.69");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=250.19,640.26");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=319.01,715.62");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=356.65,787.84");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=172.10,762.95");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=70.78,696.52");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=115.21,768.35");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=189.33,730.79");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=148.41,739.38");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=354.43,704.54");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=335.23,726.56");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=349.35,689.54");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=316.66,694.79");
    }

}

