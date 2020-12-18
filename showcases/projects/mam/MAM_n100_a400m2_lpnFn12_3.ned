
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_3
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=78.31,147.10");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=138.36,114.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=194.08,131.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=270.10,182.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=308.56,199.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=317.91,180.14");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=332.69,192.59");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=337.28,116.79");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=92.82,146.95");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=85.21,177.57");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=134.95,60.92");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=202.43,168.27");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=220.31,165.00");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=312.95,147.11");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=276.39,213.26");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=322.07,195.62");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=342.09,98.69");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=52.67,23.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=127.34,109.50");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=89.80,88.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=177.12,199.52");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=330.57,143.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=360.51,228.69");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=258.78,241.02");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=304.32,245.38");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=324.32,120.40");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=153.45,68.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=97.00,194.73");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=71.90,76.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=216.60,182.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=255.41,199.87");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=278.61,266.04");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=252.74,155.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=381.30,209.89");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=341.87,207.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=113.27,26.59");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=166.26,107.98");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=83.93,163.00");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=149.21,190.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=241.45,137.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=297.07,213.84");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=274.22,146.15");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=358.71,203.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=350.95,110.64");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=25.09,106.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=15.76,95.51");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=123.63,166.05");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=284.88,166.69");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=245.51,192.48");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=237.20,259.53");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=378.04,168.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=376.51,114.87");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=302.91,135.03");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=24.86,119.64");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=104.99,83.54");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=52.85,144.39");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=218.17,142.56");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=277.20,135.01");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=322.60,169.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=225.36,151.23");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=352.04,236.82");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=286.05,63.34");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=88.16,98.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=129.58,134.52");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=199.69,38.48");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=186.20,124.03");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=300.25,150.54");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=322.35,212.88");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=261.20,97.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=394.19,181.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=348.47,174.26");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=187.21,112.35");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=162.51,151.96");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=172.31,71.76");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=221.06,87.49");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=274.29,83.83");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=343.38,266.44");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=305.99,169.35");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=263.27,230.14");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=351.11,156.51");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=164.91,90.37");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=65.98,156.10");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=113.82,138.32");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=187.69,216.22");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=270.52,195.22");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=298.38,190.26");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=312.17,211.66");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=335.93,170.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=262.44,132.15");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=75.16,88.49");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=65.72,191.66");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=67.54,179.03");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=250.24,128.96");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=275.16,96.20");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=374.97,128.38");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=245.64,245.94");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=399.70,252.52");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=244.19,111.29");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=170.54,158.40");
    }

}

