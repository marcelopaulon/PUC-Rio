
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-3
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
        @display("p=418.00,92.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=386.77,130.27");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=419.37,158.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=462.24,194.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=364.24,213.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=320.56,202.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=228.39,239.51");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=182.86,319.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=156.91,298.18");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=404.72,186.59");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=426.35,70.54");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=465.05,95.76");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=472.51,201.38");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=418.07,269.49");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=341.10,203.15");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=238.01,234.49");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=209.71,343.14");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=170.35,231.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=413.41,77.39");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=410.28,108.51");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=393.22,148.99");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=475.40,151.34");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=379.26,117.36");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=275.22,227.01");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=251.74,233.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=131.31,400.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=235.04,306.05");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=421.44,142.28");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=431.60,130.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=485.98,170.20");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=402.92,241.27");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=384.33,289.12");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=298.55,286.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=320.11,223.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=132.02,303.81");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=230.36,353.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=347.65,130.62");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=458.61,163.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=378.30,215.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=439.98,195.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=314.54,159.33");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=328.22,212.61");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=293.71,225.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=261.21,301.46");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=168.15,344.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=505.29,45.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=402.18,171.55");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=324.01,186.97");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=483.06,258.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=364.11,223.26");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=275.49,214.04");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=233.22,249.93");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=240.50,327.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=193.85,335.44");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=508.16,86.67");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=356.38,169.87");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=387.90,210.11");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=510.65,249.43");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=446.51,185.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=311.39,173.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=254.47,207.59");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=139.37,333.45");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=69.51,272.16");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=444.66,68.64");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=313.39,139.86");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=495.22,114.00");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=480.60,184.58");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=401.53,304.66");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=369.56,255.12");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=207.29,215.28");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=220.91,319.41");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=208.66,305.14");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=454.92,41.07");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=337.42,141.92");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=424.82,200.71");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=443.86,240.97");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=373.19,169.89");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=239.91,202.58");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=236.80,286.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=162.04,325.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=141.48,312.10");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=451.36,0.84");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=326.54,123.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=449.46,130.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=373.49,232.60");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=348.46,216.35");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=292.98,189.43");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=170.42,301.52");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=125.55,242.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=112.87,366.94");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=373.65,158.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=382.30,146.91");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=433.87,175.67");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=505.08,162.94");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=353.73,201.01");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=266.64,147.05");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=196.24,216.29");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=238.24,274.57");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=222.08,299.46");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=390.19,56.75");
    }

}

