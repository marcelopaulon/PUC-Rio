
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn1-9
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
        @display("p=109.00,695.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=145.32,602.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=116.11,648.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=73.97,674.43");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=61.54,682.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=99.57,698.53");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=65.76,668.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=110.44,723.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=79.44,753.77");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=67.93,778.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=81.09,729.33");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=49.98,780.48");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=28.96,758.85");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=40.49,741.01");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=52.91,719.51");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=30.32,643.85");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=58.96,738.77");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=75.71,643.45");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=58.09,647.18");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=132.92,688.81");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=148.18,683.75");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=126.69,715.03");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=109.86,676.61");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=134.02,742.23");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=151.93,638.06");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=244.32,668.98");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=292.46,703.46");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=273.28,707.57");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=250.24,710.06");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=305.61,787.43");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=298.42,855.31");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=253.25,834.81");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=281.06,814.89");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=272.68,830.48");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=229.94,787.75");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=193.16,753.21");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=173.21,754.96");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=160.58,750.37");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=101.33,771.69");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=111.93,774.95");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=84.63,770.21");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=168.46,693.80");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=87.81,721.07");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=33.94,681.98");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=29.09,720.76");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=36.31,731.34");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=104.76,800.16");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=139.84,825.64");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=167.41,808.13");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=191.57,876.14");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=183.78,847.96");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=160.92,825.66");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=173.21,820.29");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=116.20,822.55");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=121.60,777.78");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=36.40,771.16");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=48.86,806.87");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=55.52,852.64");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=117.78,904.24");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=51.64,839.87");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=18.90,868.54");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=112.55,837.60");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=181.28,858.29");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=146.39,793.40");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=74.42,816.30");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=27.24,900.01");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=60.00,969.40");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=50.78,934.82");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=66.88,934.97");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=83.90,969.73");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=54.69,955.91");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=29.81,975.63");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=99.43,934.50");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=178.71,896.85");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=264.62,934.06");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=197.34,893.99");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=265.50,820.07");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=219.20,836.13");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=248.31,788.59");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=173.60,793.23");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=188.12,792.97");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=134.79,814.68");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=161.28,910.00");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=164.67,959.82");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=215.75,978.91");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=243.63,995.96");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=227.86,968.27");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=229.30,870.30");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=307.72,886.23");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=239.19,946.67");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=286.26,937.28");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=290.30,950.27");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=356.35,952.25");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=332.30,861.61");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=312.08,831.74");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=213.69,796.01");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=202.27,733.36");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=214.47,774.46");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=213.36,683.10");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=156.65,652.40");
    }

}

