
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_4
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
        @display("p=81.47,108.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=86.14,117.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=129.89,197.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=64.49,202.98");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=100.05,191.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=153.39,121.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=202.46,77.21");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=117.88,84.93");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=211.21,51.46");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=179.69,80.77");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=167.26,176.76");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=146.95,180.54");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=166.78,223.54");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=133.09,256.27");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=89.51,191.50");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=1.97,159.67");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=59.06,117.25");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=57.81,192.81");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=99.07,89.56");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,84.40");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=61.41,164.00");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=14.62,161.52");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=89.33,163.08");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=61.15,220.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=145.73,98.16");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=26.61,86.35");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=133.59,144.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=114.71,205.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=44.67,192.67");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=54.15,236.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=184.46,52.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=266.91,128.44");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=57.97,43.01");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=220.28,89.96");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=150.80,65.14");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=138.00,231.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=77.71,169.88");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=155.98,222.83");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=79.63,267.20");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=43.05,249.88");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=36.03,136.61");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=36.35,125.43");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=53.68,207.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=66.00,108.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=64.55,93.15");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=86.37,201.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=17.62,145.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=130.76,224.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=84.37,144.71");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=145.89,133.40");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=107.04,120.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=105.01,178.55");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=97.64,214.78");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=107.41,277.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=94.22,172.75");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=125.27,65.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=203.47,150.39");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=146.17,11.90");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=230.81,36.69");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=158.80,52.58");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=146.74,213.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=123.69,140.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=136.88,288.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=228.37,265.25");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=112.37,187.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=44.69,220.36");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=19.36,117.91");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=61.76,141.45");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=13.64,85.51");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=69.50,10.65");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=69.76,121.96");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=6.83,251.70");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=50.55,73.38");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=49.21,281.92");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=151.98,168.87");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=148.04,109.82");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=70.13,73.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=139.81,195.59");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=38.42,203.53");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=17.69,211.86");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=195.86,85.65");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=187.73,116.55");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=111.87,69.49");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=208.62,6.92");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=197.39,54.57");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=188.31,155.09");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=206.44,173.30");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=174.49,216.27");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=175.16,266.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=112.08,265.58");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=7.36,143.23");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=72.04,156.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=110.35,241.53");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=1.13,77.42");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=93.38,60.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=124.02,105.37");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=52.05,91.61");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=54.37,173.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=15.07,180.35");
    }

}

