
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_6
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=39.36,887.33");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=110.13,843.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=57.16,878.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=138.08,884.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=131.84,872.88");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=149.83,844.94");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=165.17,764.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=193.10,703.66");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=250.79,670.17");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=234.31,702.48");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=140.40,724.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=127.01,665.42");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=121.30,885.92");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=32.38,820.69");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=101.57,770.11");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=39.09,900.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=155.56,863.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=165.12,832.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=78.43,904.11");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=236.35,747.61");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=170.71,649.48");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=233.32,665.48");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=289.10,781.47");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=108.12,685.25");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=179.32,656.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=90.40,904.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=41.11,959.04");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=31.48,852.32");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=46.29,846.67");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=123.25,921.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=169.62,904.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=182.95,893.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=145.39,742.25");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=196.38,605.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=274.22,718.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=224.11,701.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=126.66,770.96");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=45.09,614.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=112.71,904.60");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=44.15,868.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=115.30,861.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=62.13,896.45");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=162.43,872.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=125.44,854.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=143.13,870.51");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=161.25,776.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=267.53,650.92");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=241.05,646.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=216.18,744.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=117.84,745.68");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=137.77,637.81");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=88.26,890.46");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=30.32,794.02");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=110.90,832.45");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=53.20,913.02");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=112.19,936.70");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=136.59,861.50");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=127.08,832.75");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=152.66,750.21");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=171.22,715.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=221.41,628.14");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=305.06,741.38");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=179.94,785.73");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=120.58,613.44");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=132.63,958.37");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=83.78,800.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=135.43,814.49");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=26.87,805.53");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=206.60,886.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=165.83,937.48");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=205.10,778.39");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=214.31,821.04");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=254.06,685.03");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=188.26,678.08");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=185.39,745.75");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=108.07,762.26");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=82.23,749.32");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=88.58,828.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=71.40,878.53");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=178.11,879.68");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=64.89,808.75");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=71.22,861.28");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=78.18,890.61");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=176.09,837.27");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=151.33,796.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=208.03,697.95");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=313.64,677.43");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=209.97,712.43");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=174.75,672.55");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=114.51,735.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=108.56,921.70");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=96.82,858.74");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=98.65,831.29");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=50.51,897.14");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=111.04,892.35");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=215.35,845.84");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=231.12,901.58");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=194.81,789.09");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=205.56,621.86");
    }

}

