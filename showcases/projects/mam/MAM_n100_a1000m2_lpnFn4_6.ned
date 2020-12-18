
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_6
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=109.37,110.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=101.26,126.18");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=68.99,197.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=106.95,277.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=146.15,231.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=173.28,289.87");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=103.85,235.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=73.97,246.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=5.89,294.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=39.49,257.68");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=18.70,242.41");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=32.44,221.12");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=78.69,204.04");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=5.08,241.13");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=82.92,173.81");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=84.17,161.30");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=128.06,237.98");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=139.01,186.95");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=70.41,291.73");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=101.91,250.22");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=150.00,250.40");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=63.28,251.00");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=118.55,170.55");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=96.80,162.82");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=128.04,146.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=117.06,128.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=153.37,178.67");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=25.03,256.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=102.34,286.96");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=92.89,232.78");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=202.20,295.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=170.35,214.06");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=47.88,274.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=16.15,312.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=22.90,211.18");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=32.80,305.77");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=53.65,188.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=14.92,253.75");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=11.43,199.08");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=134.35,222.88");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=114.73,81.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=150.10,208.39");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,92.75");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=44.54,325.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=29.83,292.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=186.51,220.81");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=90.76,252.61");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=45.11,151.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=126.97,210.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=125.47,69.63");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=144.15,81.79");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=173.64,59.41");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=69.58,218.42");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=50.70,315.13");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=222.35,229.82");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=105.57,263.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=10.77,215.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=13.81,179.92");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=18.87,280.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=40.74,191.17");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=2.85,263.53");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=58.14,164.88");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=116.88,150.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=52.15,256.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=86.40,112.66");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=92.15,89.00");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=57.84,218.51");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=203.59,125.14");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=66.83,314.23");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=128.12,252.07");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=100.93,315.35");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=137.49,245.08");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=69.87,108.23");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=94.71,71.19");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=83.88,75.31");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=153.48,114.77");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=186.25,109.00");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=24.19,176.55");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=109.98,303.90");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=230.86,270.23");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=164.45,250.22");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=95.43,218.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=136.58,316.37");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=25.94,337.57");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=109.54,225.37");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=83.87,310.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=77.67,190.79");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=41.74,203.95");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=6.52,335.93");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=34.12,153.44");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=75.78,91.29");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=115.56,197.89");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=179.27,201.65");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=86.25,332.33");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=144.82,196.95");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=172.21,239.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=51.68,300.65");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=106.48,213.19");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=66.12,143.76");
    }

}

