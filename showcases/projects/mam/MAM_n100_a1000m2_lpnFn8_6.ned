
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_6
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
        @display("p=25.31,55.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=11.55,33.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=16.09,97.95");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=13.22,193.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=92.90,210.67");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=89.48,254.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=82.04,268.19");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=132.90,286.51");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=150.17,230.19");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=134.12,232.39");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=145.44,243.08");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=58.65,293.43");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=157.41,79.90");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=83.66,132.94");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=100.79,22.03");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=11.58,54.64");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=13.93,217.12");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=61.93,214.64");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=39.48,273.20");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=97.00,201.48");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=182.08,338.67");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=129.71,203.89");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=223.52,245.33");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=118.30,208.23");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=120.49,229.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=109.52,116.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=62.61,79.50");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=1.29,95.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=42.13,98.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=90.81,171.93");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=44.67,157.67");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=54.10,264.29");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=44.64,350.26");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=130.99,318.97");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=209.85,243.28");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=114.17,262.88");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=156.56,249.79");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=6.52,287.51");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=137.91,152.44");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=67.85,69.01");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=2.04,24.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=53.88,92.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=24.72,183.68");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=66.80,192.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=144.33,207.18");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=70.86,293.87");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=158.76,195.81");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=170.55,236.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=194.26,230.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=232.94,222.41");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=50.41,318.69");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=69.21,164.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=44.34,46.02");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=46.55,62.51");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=100.05,130.25");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=15.29,206.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=117.37,182.11");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=119.78,332.83");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=112.22,289.78");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=125.51,296.97");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=164.10,152.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=139.85,255.77");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=128.06,192.96");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=28.70,304.96");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=77.84,122.00");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=35.08,91.28");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=27.51,31.25");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=37.86,167.20");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=26.34,114.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=4.22,219.60");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=108.95,299.75");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=69.90,327.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=145.00,275.28");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=77.55,225.86");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=153.31,186.18");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=111.64,252.03");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=63.39,343.21");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=63.01,177.32");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=60.28,48.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=72.24,26.21");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=57.98,139.08");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=106.03,176.08");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=190.41,210.05");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=128.49,220.05");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=33.50,340.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=169.00,302.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=89.37,296.02");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=83.81,216.83");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=53.33,277.68");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=52.47,233.65");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=49.07,78.60");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=81.68,20.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=79.67,96.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=79.70,33.93");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=36.78,132.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=85.44,197.51");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=94.89,304.81");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=106.06,241.33");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=162.69,277.07");
    }

}

