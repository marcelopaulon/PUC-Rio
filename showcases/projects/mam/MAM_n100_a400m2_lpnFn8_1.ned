
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_1
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
        @display("p=130.34,340.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=90.30,285.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=83.24,249.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=125.25,160.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=52.51,170.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=20.95,98.38");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=37.87,189.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=2.29,163.86");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=43.00,73.52");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=11.92,62.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=8.65,141.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=24.55,149.90");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=129.56,234.60");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=142.78,252.75");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=55.62,320.42");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=43.03,290.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=54.13,93.06");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=66.27,173.88");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=47.87,151.48");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=12.40,190.55");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=42.48,131.63");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=80.31,62.12");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=20.69,81.26");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=16.48,127.08");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=80.55,81.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=112.36,315.75");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=144.23,315.98");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=93.69,364.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=66.93,203.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=75.78,94.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=44.40,109.92");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=10.86,109.42");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=29.67,265.35");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=89.57,168.32");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=69.66,106.83");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=26.15,42.92");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=25.90,122.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=25.45,169.52");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=95.83,321.95");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=120.89,355.00");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=120.22,291.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=80.74,205.60");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=206.02,201.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=139.40,199.57");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=32.99,87.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=112.41,206.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=20.13,159.04");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=87.96,148.42");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=1.45,77.56");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=52.48,212.17");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=40.48,143.04");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=125.34,316.83");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=138.84,368.33");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=8.13,245.82");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=64.43,294.20");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=145.57,132.45");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=93.96,203.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=38.65,49.39");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=59.98,229.20");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=26.50,204.70");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=64.32,59.72");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=37.01,37.68");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=100.47,133.86");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=85.88,108.01");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=49.82,242.03");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=191.55,318.07");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=101.09,260.46");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=112.28,246.36");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=135.95,175.18");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=59.13,112.88");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=4.17,173.99");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=66.71,282.75");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=53.29,180.33");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=100.93,41.08");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=3.23,44.30");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=99.28,153.11");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=32.41,156.53");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=82.83,341.48");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=97.65,350.81");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=37.21,337.99");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=42.29,259.49");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=93.31,245.39");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=18.39,247.82");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=35.27,99.77");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=0.53,115.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=69.88,121.99");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=88.99,51.38");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=14.75,18.56");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=73.81,163.38");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=34.05,174.70");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=50.22,304.11");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=135.29,330.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=110.10,304.50");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=101.62,218.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=152.67,219.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=73.06,147.38");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=52.17,137.53");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=120.04,216.92");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=76.62,178.98");
    }

}

