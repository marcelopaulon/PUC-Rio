
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn1-7
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
        @display("p=366.00,679.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=420.42,683.80");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=424.95,770.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=386.01,786.63");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=387.76,721.02");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=391.68,761.00");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=396.47,773.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=444.56,765.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=475.34,691.93");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=480.87,762.74");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=501.91,757.51");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=464.03,710.83");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=426.17,697.93");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=417.90,655.16");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=438.03,659.96");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=425.09,621.22");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=379.98,542.13");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=363.82,518.27");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=412.82,601.03");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=420.74,593.61");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=433.60,540.06");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=479.78,527.31");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=517.44,505.40");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=488.47,579.39");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=454.26,622.09");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=505.74,655.97");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=551.04,654.72");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=557.58,627.83");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=579.74,672.88");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=612.86,740.44");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=651.71,728.74");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=593.77,728.88");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=542.97,753.60");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=503.49,742.32");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=570.24,789.47");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=473.98,786.52");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=512.34,748.36");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=508.23,733.46");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=452.89,714.60");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=417.67,761.25");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=412.99,787.11");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=417.21,716.62");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=479.50,644.40");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=505.97,674.68");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=362.90,708.68");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=414.04,748.10");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=408.42,706.03");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=362.83,772.75");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=387.46,601.18");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=337.10,549.59");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=403.62,539.67");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=464.33,603.96");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=471.99,586.62");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=443.15,564.33");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=447.43,538.78");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=459.11,593.57");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=451.27,585.50");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=451.51,574.60");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=450.53,639.94");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=382.67,581.52");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=430.28,549.68");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=421.68,530.08");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=436.93,530.34");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=397.69,515.33");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=338.47,488.66");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=334.70,475.64");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=404.09,486.73");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=326.98,508.03");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=348.77,601.29");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=311.53,597.54");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=276.36,513.54");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=301.08,508.51");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=344.68,535.89");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=309.62,516.85");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=300.83,528.09");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=256.30,515.51");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=222.30,523.41");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=288.94,552.05");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=344.04,503.93");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=354.17,526.33");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=305.96,560.37");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=352.44,547.27");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=230.34,509.69");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=209.28,538.44");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=232.27,484.63");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=201.84,398.62");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=143.99,397.34");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=223.02,398.43");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=203.81,468.05");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=172.38,468.34");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=154.71,545.66");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=223.86,615.95");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=216.64,638.22");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=168.43,688.96");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=234.55,743.10");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=206.87,648.87");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=244.02,693.75");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=266.95,757.73");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=277.50,799.33");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=313.45,746.79");
    }

}

