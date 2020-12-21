
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_3
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
        @display("p=168.95,87.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=205.38,140.04");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=160.08,154.40");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=105.92,152.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=40.93,179.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=88.33,245.00");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=46.80,194.57");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=44.73,129.13");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=55.54,131.82");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=39.78,66.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=34.93,29.34");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=40.18,50.29");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=25.46,83.04");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=28.31,49.39");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=84.43,41.24");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=21.61,4.75");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=49.68,92.70");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=21.33,92.31");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=52.32,18.03");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=59.44,5.84");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=133.01,73.34");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=89.46,163.35");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=114.48,179.80");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=121.32,170.05");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=89.21,0.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=130.54,84.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=236.95,225.08");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=243.28,205.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=73.38,176.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=59.20,155.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=113.03,207.52");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=107.04,247.37");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=102.60,120.30");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=67.76,99.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=0.19,33.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=61.05,36.44");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=16.83,123.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=17.94,36.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=19.61,25.02");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=49.98,43.72");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=11.34,67.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=131.01,95.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=33.31,15.00");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=70.00,30.06");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=94.59,16.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=147.36,12.46");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=116.99,231.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=190.64,185.38");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=100.41,173.16");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=7.96,100.33");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=200.38,94.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=160.16,100.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=214.80,120.41");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=94.61,187.42");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=75.23,161.16");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=64.85,283.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=30.33,219.84");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=39.05,115.14");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=80.96,75.82");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=49.56,57.57");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=27.66,69.35");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=97.01,55.01");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=8.27,55.89");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=6.95,44.38");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=4.23,7.02");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=1.59,75.42");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=66.60,115.42");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=116.49,92.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=112.96,22.35");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=47.90,8.45");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=122.68,69.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=45.33,103.69");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=183.75,119.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=122.15,157.66");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=111.78,114.50");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=256.94,89.25");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=195.96,63.28");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=170.63,243.09");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=129.62,142.77");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=71.36,232.40");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=95.61,277.19");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=35.01,144.34");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=77.14,60.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=55.68,121.46");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=31.87,94.89");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=90.40,112.49");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=112.91,50.41");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=17.04,76.14");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=41.43,38.53");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=167.47,41.62");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=70.69,8.37");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=54.08,81.03");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=52.73,163.61");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=139.07,6.50");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=133.08,21.05");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=136.81,60.70");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=8.27,157.71");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=84.78,255.67");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=166.85,108.94");
    }

}

