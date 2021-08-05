
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_5
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
        @display("p=44.30,61.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=43.34,73.06");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=29.20,81.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=21.54,150.06");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=89.03,135.26");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=22.81,93.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=40.32,50.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=44.38,28.98");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=64.06,50.32");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=31.71,110.31");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=73.74,113.43");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=6.53,133.71");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=171.87,163.86");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=94.84,73.27");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=23.55,52.31");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=61.61,121.01");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=112.18,175.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=132.67,160.38");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=64.78,17.78");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=56.82,74.40");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=25.48,28.83");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=69.81,96.18");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=27.04,128.34");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=89.69,165.99");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=6.35,71.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=65.32,67.63");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=50.73,133.51");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=116.73,43.56");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=0.99,42.32");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=81.65,225.31");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=132.13,213.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=10.02,94.61");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=113.77,31.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=27.89,5.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=5.21,31.95");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=65.26,187.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=73.32,134.04");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=29.82,140.49");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=155.36,117.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=73.59,36.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=76.45,74.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=120.36,97.42");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=47.96,173.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=152.01,90.96");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=21.85,18.52");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=39.77,92.89");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=45.36,13.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=65.59,79.45");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=37.55,195.90");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=149.14,49.40");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=20.58,161.23");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=136.48,57.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=140.25,41.06");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=139.53,74.86");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=81.30,95.89");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=119.62,153.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=39.80,158.58");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=1.94,60.22");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=66.04,105.79");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=30.13,70.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=56.76,92.09");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=66.12,146.78");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=45.75,142.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=10.01,120.40");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=162.94,142.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=91.49,48.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=85.82,33.55");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=17.63,63.34");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=24.83,184.82");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=104.98,117.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=45.46,118.25");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=12.99,42.26");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=48.71,1.09");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=114.25,13.91");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=87.32,110.67");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=124.01,69.86");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=79.54,123.73");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=93.42,155.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=38.83,126.21");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=55.83,103.02");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=53.74,23.75");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=50.14,162.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=88.61,190.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=81.86,85.19");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=11.87,7.00");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=52.47,36.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=73.45,58.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=21.01,112.75");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=48.71,85.87");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=3.55,154.08");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=135.14,97.33");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=70.89,6.68");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=83.73,19.97");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=7.04,165.91");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=12.87,200.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=101.23,128.34");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=55.79,57.07");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=89.60,60.82");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=2.84,18.96");
    }

}

