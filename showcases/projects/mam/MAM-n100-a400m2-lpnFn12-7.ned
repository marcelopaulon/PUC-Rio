
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-7
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
        @display("p=155.00,200.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=182.36,146.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=171.52,166.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=251.15,109.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=244.36,124.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=231.45,197.06");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=206.50,218.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=218.62,150.29");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=119.40,161.07");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=241.79,170.18");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=205.65,118.78");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=157.67,184.22");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=249.92,91.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=220.84,169.52");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=208.72,107.10");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=245.50,235.57");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=193.79,147.11");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=80.92,209.43");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=148.52,212.09");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=143.82,151.92");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=203.11,254.22");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=178.21,97.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=255.69,130.53");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=174.23,135.54");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=218.96,207.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=248.31,149.76");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=91.37,203.94");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=98.40,218.16");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=193.83,87.06");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=216.13,232.34");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=264.78,62.35");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=295.53,94.10");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=251.80,172.08");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=247.88,247.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=264.24,147.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=123.49,192.15");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=177.15,204.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=275.57,155.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=134.57,101.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=349.99,118.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=193.05,115.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=297.90,152.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=166.72,294.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=262.68,161.39");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=129.76,156.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=158.42,244.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=157.94,144.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=133.70,238.06");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=161.91,91.42");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=291.50,111.65");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=231.03,181.60");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=135.35,222.15");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=237.84,135.29");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=86.45,127.06");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=160.97,220.26");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=108.54,184.69");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=166.99,202.33");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=297.32,164.91");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=275.36,47.61");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=203.47,183.43");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=125.31,218.21");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=218.16,86.36");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=94.92,229.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=152.32,158.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=147.11,184.83");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=76.24,145.18");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=275.72,101.16");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=228.09,143.13");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=270.23,213.99");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=282.15,178.08");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=189.48,213.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=151.05,128.69");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=196.72,191.85");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=149.96,169.17");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=84.28,154.62");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=227.91,76.50");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=237.73,217.71");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=185.76,194.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=188.13,253.48");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=279.83,166.17");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=117.06,177.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=115.39,201.03");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=174.98,60.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=167.33,100.46");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=267.75,110.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=236.77,89.11");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=318.22,188.62");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=268.68,259.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=250.16,72.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=104.70,117.81");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=111.29,133.24");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=187.76,102.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=250.94,211.80");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=337.64,112.22");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=299.66,193.83");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=268.66,283.00");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=185.84,240.53");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=223.11,126.52");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,72.35");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=205.39,155.32");
    }

}

