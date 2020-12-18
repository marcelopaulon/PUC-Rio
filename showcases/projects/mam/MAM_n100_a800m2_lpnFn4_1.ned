
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_1
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
        @display("p=169.14,750.83");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=233.22,750.34");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=227.77,686.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=217.51,633.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=245.94,685.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=266.71,781.29");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=235.84,792.29");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=153.28,754.65");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=112.23,744.25");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=128.42,747.66");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=140.79,751.47");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=141.65,734.20");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=160.19,698.42");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=167.19,715.81");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=201.82,667.31");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=257.79,680.52");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=293.18,722.69");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=312.14,753.53");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=324.79,786.90");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=277.59,775.98");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=211.23,765.36");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=257.89,720.56");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=329.82,751.19");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=296.39,705.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=118.12,691.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=117.55,679.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=236.58,729.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=134.84,697.72");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=179.04,659.69");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=317.75,716.04");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=339.99,718.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=301.91,766.38");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=191.55,764.22");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=84.08,753.77");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=69.71,677.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=150.24,743.96");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=83.72,703.05");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=134.09,609.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=237.03,662.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=183.62,644.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=185.59,740.92");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=249.73,793.21");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=295.75,684.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=308.99,792.45");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=208.82,729.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=200.18,774.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=322.40,650.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=324.38,760.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=270.82,711.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=73.94,656.07");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=161.78,734.42");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=258.39,690.63");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=171.34,667.08");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=294.26,598.76");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=249.20,712.97");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=349.33,758.84");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=265.95,763.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=183.44,729.40");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=121.38,761.65");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=42.68,768.46");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=197.14,740.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=167.57,777.82");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=124.52,701.33");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=195.70,793.19");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=185.66,678.43");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=258.58,650.92");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=308.79,720.80");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=368.36,679.14");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=324.45,798.53");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=334.08,771.81");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=194.59,707.99");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=295.84,630.11");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=305.99,782.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=337.73,623.68");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=160.57,677.19");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=125.00,729.68");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=280.14,765.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=220.39,724.40");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=264.43,637.29");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=208.30,611.45");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=210.91,779.27");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=263.39,798.06");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=183.08,690.35");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=164.94,787.57");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=106.45,777.39");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=96.12,760.32");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=72.36,759.53");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=138.32,676.63");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=149.40,709.18");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=206.49,640.77");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=206.32,701.97");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=281.26,648.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=409.33,757.56");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=378.57,742.28");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=234.98,762.79");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=283.17,705.37");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=267.43,750.92");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=312.39,736.23");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=311.36,700.28");
    }

}

