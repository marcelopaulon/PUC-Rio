
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_2
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=14.99,108.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=39.96,61.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=106.00,84.83");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=134.13,124.02");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=188.50,52.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=219.70,100.94");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=273.69,167.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=261.15,157.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=313.19,155.35");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=359.10,164.72");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=352.44,173.01");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=349.75,159.62");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=142.46,83.14");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=1.81,150.37");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=10.36,129.15");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=71.97,14.85");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=162.28,164.68");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=188.37,114.61");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=257.88,30.44");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=215.40,153.51");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=244.94,140.86");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=294.62,218.95");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=363.95,177.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=343.82,272.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=329.05,246.54");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=125.20,133.69");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=17.97,148.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=60.36,8.11");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=116.86,84.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=141.40,197.63");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=171.20,72.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=244.35,118.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=246.68,178.88");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=335.21,183.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=369.34,100.88");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=378.07,176.77");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=314.48,193.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=391.26,144.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=34.94,147.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=75.50,135.18");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=94.58,14.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=90.13,62.33");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=130.41,113.44");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=212.60,41.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=291.96,68.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=299.09,194.56");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=228.15,195.70");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=370.28,234.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=333.12,230.96");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=342.14,210.76");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=291.42,149.80");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=43.64,45.65");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=68.03,84.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=59.29,35.39");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=193.83,80.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=171.77,58.98");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=143.60,50.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=241.00,108.81");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=294.58,87.03");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=227.30,219.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=302.61,58.17");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=312.88,249.04");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=274.74,128.62");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=335.56,149.53");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=170.14,102.55");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=69.49,30.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=4.62,61.94");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=131.29,42.82");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=56.40,96.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=189.62,33.65");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=211.99,82.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=261.11,124.70");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=249.88,167.25");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=338.84,119.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=348.52,195.79");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=287.97,209.97");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=390.32,115.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=37.23,36.75");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=96.27,119.75");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=25.63,119.07");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=106.78,67.61");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=143.52,108.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=133.31,93.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=190.84,160.40");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=323.46,152.32");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=264.79,181.07");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=306.78,166.21");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=285.95,98.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=329.17,170.90");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=380.48,144.67");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=122.65,72.45");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=90.71,107.80");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=81.96,27.47");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=99.29,76.31");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=158.85,119.61");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=158.41,40.12");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=245.71,40.18");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=226.75,184.47");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=199.32,230.74");
    }

}

