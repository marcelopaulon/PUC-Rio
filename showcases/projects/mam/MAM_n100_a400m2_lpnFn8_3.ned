
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_3
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
        @display("p=159.08,303.29");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=132.77,215.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=113.97,187.58");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=35.65,141.92");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=66.17,160.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=120.00,234.98");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=96.96,288.20");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=79.14,281.55");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=153.05,286.44");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=119.39,265.02");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=129.16,294.39");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=134.92,233.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=110.99,315.53");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=121.95,395.96");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=171.91,136.31");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=31.98,174.87");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=27.85,151.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=145.04,175.26");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=87.60,147.60");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=102.56,266.86");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=63.39,240.39");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=157.25,270.20");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=37.08,297.49");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=129.27,284.16");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=151.01,249.24");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=130.05,353.14");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=165.96,284.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=34.62,204.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=62.20,264.70");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=75.47,133.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=104.71,138.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=104.27,158.60");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=106.03,254.16");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=45.61,259.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=215.69,289.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=50.13,279.03");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=107.91,328.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=80.60,160.04");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=88.73,302.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=167.81,312.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=182.99,290.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=103.80,228.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=16.43,152.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=150.32,113.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=165.08,235.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=24.91,259.12");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=101.38,245.31");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=153.75,329.65");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=197.05,247.63");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=167.97,274.57");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=173.58,217.31");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=54.56,366.86");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=176.67,298.59");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=69.96,202.84");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=75.38,122.20");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=11.36,164.20");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=48.46,182.56");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=194.09,229.79");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=140.29,262.31");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=1.31,317.01");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=231.02,272.31");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=65.53,220.45");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=122.01,224.21");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=185.90,268.37");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=92.72,226.13");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=180.90,336.08");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=146.65,213.78");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=124.17,188.46");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=49.20,75.76");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=71.70,173.38");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=162.39,159.94");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=118.58,326.31");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=87.01,315.86");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=194.27,213.07");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=196.53,299.54");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=165.37,376.31");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=118.67,287.12");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=80.17,292.94");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=236.87,319.75");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=74.49,230.56");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=162.45,223.42");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=61.93,131.61");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=99.09,148.46");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=74.62,252.60");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=109.63,281.37");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=21.25,333.99");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=86.12,327.73");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=156.80,342.29");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=201.74,272.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=234.12,235.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=92.33,266.48");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=187.19,306.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=151.60,167.59");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=45.74,148.37");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=111.00,128.61");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=15.55,131.58");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=135.01,273.43");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=146.10,237.43");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=121.15,371.86");
    }

}

