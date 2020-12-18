
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_5
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
        @display("p=106.40,292.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=120.33,251.94");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=31.53,273.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=53.73,184.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=84.22,198.88");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=66.29,140.20");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=75.43,67.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=45.46,87.48");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=41.27,161.72");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=32.38,78.99");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=17.63,69.53");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=99.56,27.04");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=118.60,115.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=183.42,93.07");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=246.87,135.38");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=253.57,144.08");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=238.88,148.90");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=186.31,147.42");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=151.32,78.62");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=233.50,92.72");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=228.15,108.22");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=267.31,179.52");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=263.51,189.00");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=198.78,131.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=130.60,237.55");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=145.34,228.55");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=176.37,285.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=41.09,308.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=29.59,132.25");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=99.24,257.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=77.52,187.67");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=58.34,81.80");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=69.46,128.12");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=10.95,250.63");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=9.15,89.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=104.47,40.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=91.08,15.32");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=118.14,67.52");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=237.23,46.20");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=199.00,62.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=246.30,88.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=222.81,151.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=189.24,192.87");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=150.80,93.63");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=235.58,61.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=206.82,48.56");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=302.32,175.53");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=349.71,149.45");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=217.25,70.81");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=70.82,369.80");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=15.62,287.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=124.55,196.60");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=85.14,297.82");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=21.52,173.28");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=132.39,214.35");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=103.79,123.32");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=171.09,70.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=30.71,22.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=112.58,103.19");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=0.02,73.48");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=19.14,18.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=184.50,27.82");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=153.52,159.60");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=193.60,33.76");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=275.68,122.26");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=337.50,157.27");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=211.26,110.48");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=108.65,173.72");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=136.01,113.40");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=213.69,134.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=308.71,158.18");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=297.56,163.22");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=182.02,234.02");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=184.54,177.82");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=117.98,289.89");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=99.27,212.05");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=151.16,243.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=8.41,272.37");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=28.26,201.14");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=89.46,143.03");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=23.42,95.80");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=63.06,53.34");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=52.87,55.55");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=4.21,150.37");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=45.88,77.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=44.78,38.62");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=91.68,68.20");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=116.19,23.35");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=232.72,130.80");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=188.10,131.27");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=337.39,183.62");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=214.25,173.11");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=175.84,161.89");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=219.81,16.88");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=268.98,129.91");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=212.77,97.03");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=277.96,172.73");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=255.79,203.10");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=159.31,133.16");
    }

}

