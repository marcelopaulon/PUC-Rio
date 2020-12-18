
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_0
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
        @display("p=49.67,35.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=50.35,15.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=107.11,31.37");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=153.00,86.02");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=161.67,29.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=154.24,16.56");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=192.55,27.59");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=250.82,16.74");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=229.57,100.14");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=190.19,166.54");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=165.56,182.89");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=160.05,206.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=53.61,133.37");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=41.08,7.10");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=25.56,47.93");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=25.91,11.43");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=214.46,76.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=124.82,16.61");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=128.84,28.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=205.53,38.80");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=251.44,39.59");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=230.81,110.32");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=207.90,239.31");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=114.57,161.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=161.98,222.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=136.49,53.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=14.80,105.40");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=55.10,5.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=137.01,38.84");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=232.40,45.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=241.47,25.87");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=107.98,12.18");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=271.31,2.09");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=262.79,14.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=246.71,136.10");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=182.55,189.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=150.03,167.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=130.30,154.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,91.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=27.51,33.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=68.03,17.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=165.34,97.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=193.09,73.21");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=164.05,79.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=117.48,46.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=150.06,50.58");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=273.59,68.48");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=212.79,165.93");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=234.86,223.80");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=187.87,263.31");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=147.72,119.05");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=51.20,83.96");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=87.03,49.65");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=39.92,60.68");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=71.93,27.09");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=215.60,93.81");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=79.59,73.08");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=224.75,63.20");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=187.77,39.84");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=242.61,80.99");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=201.11,167.12");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=179.57,169.28");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=209.23,143.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=222.73,197.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=17.21,80.88");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=73.03,48.44");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=39.10,18.78");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=101.39,55.89");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=224.41,36.45");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=221.69,50.37");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=170.15,18.97");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=250.40,94.41");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=219.07,110.10");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=228.12,140.19");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=278.99,132.17");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=187.37,114.65");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=194.12,220.25");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=43.12,71.72");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=104.68,43.11");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=139.35,13.37");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=117.10,65.72");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=194.07,147.49");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=173.80,52.96");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=204.07,67.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=158.26,2.07");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=222.45,11.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=138.14,129.80");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=127.61,169.31");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=168.80,194.13");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=173.23,249.87");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=166.84,156.19");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=81.98,25.38");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=2.63,97.70");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=192.09,11.28");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=197.59,50.23");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=186.61,93.09");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=93.77,66.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=204.44,21.82");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=333.37,9.38");
    }

}

