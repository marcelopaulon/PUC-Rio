
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_7
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
        @display("p=63.29,259.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.49,231.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=73.17,266.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=82.94,253.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=148.77,225.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=139.90,234.10");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=191.66,166.88");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=178.26,177.10");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=232.62,145.97");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=283.12,134.99");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=311.71,142.01");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=320.59,125.59");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=103.44,315.62");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=59.84,244.13");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=117.01,257.76");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=89.88,218.94");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=106.48,255.30");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=98.76,204.47");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=138.40,217.14");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=201.11,186.77");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=86.11,150.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=165.62,154.30");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=271.39,106.36");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=383.07,203.91");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=303.72,109.35");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=95.29,390.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=50.01,217.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=130.43,246.40");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=127.12,303.00");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=102.35,269.06");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=172.38,210.89");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=220.20,218.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=181.94,192.94");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=136.24,132.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=208.83,150.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=313.59,162.71");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=330.42,179.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=335.59,45.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=140.60,313.27");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=42.18,232.91");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=128.85,180.25");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=127.16,281.12");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=2.41,262.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=182.58,262.06");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=109.31,214.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=167.37,105.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=163.35,242.65");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=237.23,130.05");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=270.65,157.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=252.35,76.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=229.72,160.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=76.51,394.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=102.00,244.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=126.31,218.91");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=68.80,224.22");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=128.48,206.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=171.01,269.55");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=151.07,205.57");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=129.19,112.18");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=218.67,203.94");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=262.79,216.25");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=189.23,104.95");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=332.39,134.48");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=234.68,84.90");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=35.26,281.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=53.69,355.17");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=29.36,252.43");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=27.88,227.23");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=141.68,286.44");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=141.68,167.57");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=157.49,254.07");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=248.88,123.29");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=273.63,198.89");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=254.77,187.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=375.07,97.14");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=347.16,161.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=302.57,146.07");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=95.83,282.13");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=69.13,207.60");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=129.79,256.99");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=6.26,272.34");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=18.23,190.15");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=110.15,173.92");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=151.55,308.38");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=156.28,178.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=138.30,198.56");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=323.36,144.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=342.17,185.91");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=283.12,235.87");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=289.71,74.92");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=160.82,374.34");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=39.36,319.75");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=194.89,249.41");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=59.36,300.31");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=173.52,235.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=221.47,265.57");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=114.76,186.79");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=113.98,127.43");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=85.51,185.21");
    }

}

