
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_3
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=121.53,866.88");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=219.89,876.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=299.70,855.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=378.60,862.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=364.20,831.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=375.81,817.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=396.82,806.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=379.07,800.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=339.67,786.28");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=386.22,750.87");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=436.18,726.55");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=426.71,667.92");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=397.40,670.03");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=332.60,728.99");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=321.19,704.65");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=272.93,775.64");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=256.81,712.28");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=239.59,706.11");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=153.75,726.76");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=185.03,758.45");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=201.26,725.62");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=203.61,697.13");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=246.80,694.13");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=330.78,774.11");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=147.53,907.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=106.60,953.50");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=143.05,893.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=294.84,918.73");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=418.36,873.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=319.79,903.55");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=470.98,790.55");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=350.84,836.39");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=391.83,856.73");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=327.72,746.43");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=402.58,771.50");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=447.28,738.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=376.40,653.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=366.22,649.77");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=345.30,733.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=344.24,695.53");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=308.76,742.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=178.23,682.86");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=221.05,650.21");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=185.87,776.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=234.80,831.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=225.97,806.59");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=231.57,781.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=222.48,749.27");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=361.96,749.54");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=112.79,904.00");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=38.22,847.80");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=192.96,923.28");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=348.25,906.98");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=449.29,863.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=451.32,848.62");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=382.46,825.80");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=427.98,853.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=464.29,758.51");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=352.16,785.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=295.87,764.50");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=453.52,724.08");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=428.56,635.82");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=459.92,637.45");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=235.94,720.83");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=292.11,674.86");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=285.74,772.20");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=250.39,742.23");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=240.64,671.11");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=145.29,745.63");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=164.87,759.14");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=258.62,780.00");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=176.02,753.38");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=235.27,693.57");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=346.00,774.52");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=128.19,909.75");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=153.28,841.06");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=241.13,956.51");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=286.82,842.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=325.69,798.23");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=428.31,839.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=337.82,760.24");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=411.16,798.93");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=360.60,774.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=316.69,725.07");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=373.75,696.59");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=482.75,769.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=483.25,729.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=394.66,708.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=376.40,669.47");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=275.32,686.28");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=262.11,841.94");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=294.11,710.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=238.12,760.76");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=87.55,736.59");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=156.32,798.64");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=260.41,730.06");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=201.99,709.15");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=255.54,769.40");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=299.39,734.07");
    }

}

