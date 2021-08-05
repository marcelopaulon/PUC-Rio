
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_9
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=123.99,122.85");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=139.41,122.38");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=166.96,189.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=129.11,250.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=115.26,228.49");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=154.61,304.21");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=163.57,382.65");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=161.01,328.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=160.93,228.66");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=240.33,215.72");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=252.54,251.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=311.24,266.63");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=63.31,80.07");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=114.62,115.63");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=165.80,112.64");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=213.89,136.21");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=126.49,316.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=188.58,224.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=193.06,355.00");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=140.28,359.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=153.81,256.20");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=128.27,171.60");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=240.08,184.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=236.92,285.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=319.56,241.51");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=143.43,92.16");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=117.52,58.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=117.30,33.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=221.02,151.36");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=82.21,261.00");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=39.82,241.25");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=72.53,320.05");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=223.15,358.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=106.21,390.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=85.42,211.67");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=224.63,219.83");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=227.73,230.76");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=280.74,239.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=175.32,74.27");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=144.92,76.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=136.38,138.27");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=181.60,184.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=142.99,332.52");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=50.11,265.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=90.65,299.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=243.44,354.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=166.37,317.06");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=153.52,186.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=211.97,191.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=273.63,279.02");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=331.42,272.43");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=111.23,97.47");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=199.88,59.23");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=193.25,138.22");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=214.10,232.36");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=106.72,203.78");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=153.66,221.57");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=116.08,215.41");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=138.30,396.76");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=140.31,311.12");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=155.59,200.04");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=248.37,208.42");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=290.48,167.34");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=335.33,282.01");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=120.02,76.89");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=167.81,139.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=201.65,170.58");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=204.02,139.19");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=46.67,221.14");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=115.90,143.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=109.21,268.26");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=162.15,372.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=64.05,346.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=194.15,177.85");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=274.68,262.74");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=314.77,187.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=285.37,280.55");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=104.98,49.74");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=65.58,66.44");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=106.91,86.89");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=177.97,268.31");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=112.67,301.30");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=78.35,232.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=202.87,343.57");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,399.39");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=91.15,386.96");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=63.18,215.93");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=293.25,201.72");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=262.44,302.72");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=289.52,308.95");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=67.12,106.84");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=179.74,197.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=128.95,96.15");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=160.46,172.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=169.73,297.88");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=90.45,233.89");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=106.30,373.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=163.02,395.93");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=173.82,326.54");
    }

}

