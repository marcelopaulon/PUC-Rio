
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-9
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
        @display("p=347.00,662.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=366.53,677.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=297.14,702.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=295.52,729.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=381.06,729.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=389.82,680.03");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=413.82,722.00");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=396.08,752.04");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=377.46,758.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=404.50,762.65");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=472.48,720.29");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=532.93,782.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=554.04,786.96");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=652.16,784.28");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=663.14,795.39");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=675.67,775.22");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=661.33,735.66");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=648.40,707.58");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=671.84,750.93");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=675.39,707.54");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=664.90,706.28");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=698.87,686.17");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=673.25,666.80");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=617.12,719.54");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=641.08,731.67");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=431.37,688.54");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=393.71,702.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=346.04,717.83");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=314.29,724.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=474.16,738.82");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=379.91,674.29");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=341.69,772.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=381.41,714.07");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=293.00,789.78");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=424.38,736.89");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=512.46,745.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=520.65,777.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=545.01,714.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=628.23,724.05");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=697.99,769.36");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=624.44,746.38");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=603.34,685.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=571.17,731.17");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=658.26,745.22");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=677.52,638.07");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=698.36,696.46");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=769.21,672.39");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=708.92,672.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=652.69,727.75");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=643.54,768.13");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=383.24,695.82");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=334.50,654.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=317.14,665.43");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=263.13,707.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=400.25,795.29");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=397.58,591.45");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=429.14,721.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=354.76,673.15");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=284.57,781.41");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=439.34,791.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=499.35,717.90");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=579.80,796.57");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=551.77,775.16");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=669.70,786.30");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=728.65,750.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=702.81,739.86");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=703.71,648.51");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=620.51,654.24");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=692.51,750.46");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=594.56,708.12");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=709.75,639.83");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=730.73,622.67");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=752.52,674.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=548.20,760.93");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=693.39,716.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=267.65,614.51");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=440.27,729.67");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=275.77,730.86");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=338.53,791.89");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=321.58,753.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=402.52,681.47");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=373.33,648.29");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=406.32,737.85");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=320.90,696.87");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=481.28,789.81");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=462.64,716.43");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=508.94,781.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=600.33,721.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=605.05,768.04");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=674.20,796.96");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=679.20,743.35");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=705.27,792.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=627.29,691.14");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=715.56,767.45");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=610.02,670.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=676.09,731.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=666.37,681.92");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=640.79,628.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=558.39,745.56");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=585.77,747.72");
    }

}

