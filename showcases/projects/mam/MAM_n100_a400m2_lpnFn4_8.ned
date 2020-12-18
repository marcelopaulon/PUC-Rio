
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_8
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=121.07,301.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,327.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=37.73,323.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=38.84,308.31");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=10.95,229.33");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=24.12,318.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=57.55,279.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=80.50,298.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=48.98,304.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=64.27,379.49");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=115.92,361.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=127.97,359.60");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=149.16,381.10");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=195.58,353.04");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=198.54,307.94");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=170.61,235.30");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=199.48,203.23");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=185.30,129.70");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=190.45,105.25");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=166.02,13.04");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=163.62,22.97");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=185.61,24.65");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=274.77,30.73");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=257.22,24.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=170.15,273.25");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=138.23,274.50");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=83.11,260.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=29.39,288.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=67.35,342.47");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=30.60,190.39");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=26.09,331.77");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=69.36,241.99");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=15.48,329.37");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=52.00,315.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=130.53,304.95");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=89.65,379.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=126.61,347.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=102.95,384.00");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=228.20,368.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=209.12,211.21");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=161.19,289.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=267.73,193.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=132.96,132.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=146.64,25.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=116.91,61.84");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=245.86,2.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=181.06,15.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=189.33,58.59");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=234.89,60.16");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=5.83,298.97");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=101.84,245.56");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=74.80,322.40");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=4.54,326.20");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=0.27,381.52");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=68.63,254.00");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=10.35,313.32");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=47.79,233.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=156.38,276.06");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=45.66,249.67");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=75.59,398.25");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=172.24,343.94");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=216.69,379.67");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=164.47,329.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=222.90,336.45");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=275.61,298.67");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=120.25,199.72");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=121.21,151.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=252.63,74.35");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=260.63,91.31");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=168.65,92.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=217.55,73.70");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=192.54,4.69");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=296.50,0.63");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=229.57,12.85");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=125.65,316.64");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=111.71,335.43");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=97.46,343.41");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=13.89,280.38");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=106.77,275.87");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=23.39,234.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=18.90,375.38");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=6.74,343.60");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=174.06,308.52");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=48.09,291.63");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=66.26,361.42");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=133.05,396.04");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=138.90,371.83");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=212.00,353.61");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=214.55,256.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=232.26,222.75");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=180.64,223.47");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=251.24,226.27");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=156.43,160.15");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=156.77,117.71");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=145.95,40.10");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=161.47,84.06");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=158.31,34.79");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=334.43,63.22");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=255.66,12.30");
    }

}

