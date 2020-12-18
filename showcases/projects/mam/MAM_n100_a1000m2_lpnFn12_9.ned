
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_9
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
        @display("p=92.08,85.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=162.73,70.94");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=157.99,0.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=204.96,5.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=147.13,0.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=135.21,7.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=156.75,46.52");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=231.82,95.61");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=61.34,159.79");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=106.95,69.61");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=125.14,118.42");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=194.44,11.17");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=185.65,51.34");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=128.55,32.33");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=79.80,90.85");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=149.00,21.90");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=169.41,51.28");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=112.11,115.24");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=15.78,113.87");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=178.09,149.01");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=250.70,16.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=178.35,19.03");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=57.40,8.33");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=162.73,98.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=221.64,53.41");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=217.04,102.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=71.05,188.76");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=75.75,134.58");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=206.66,155.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=191.29,29.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=241.69,44.89");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=104.89,25.92");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=190.30,84.13");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=108.43,14.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=244.85,70.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=95.29,56.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=88.22,138.40");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=153.85,90.52");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=200.11,55.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=122.10,16.96");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=138.88,87.77");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=67.51,3.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=142.19,48.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=288.16,72.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=125.42,93.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=60.90,42.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=76.66,116.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=141.92,64.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=145.70,12.04");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=141.84,99.35");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=162.97,22.59");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=125.39,48.36");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=244.58,98.66");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=74.42,50.19");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=85.20,108.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=185.38,100.07");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=133.98,73.71");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=209.06,25.90");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=245.31,3.70");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=219.18,24.73");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=176.55,36.20");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=268.70,140.47");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=59.28,73.62");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=6.95,63.18");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=203.33,141.34");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=225.87,15.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=215.19,40.49");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=169.51,0.14");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=146.83,35.35");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=82.28,66.94");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=262.39,81.59");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=22.03,42.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=91.41,40.32");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=181.26,120.45");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=233.21,4.03");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=256.33,6.04");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=63.98,29.10");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=114.45,33.15");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=217.61,9.56");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=211.00,172.51");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=184.23,131.56");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=56.39,94.91");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=180.47,64.78");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=77.04,13.21");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=227.67,79.55");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=99.16,10.13");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=101.64,45.50");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=214.78,117.85");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=216.25,182.69");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=161.31,168.75");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=171.35,122.08");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=218.78,141.61");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=243.61,29.11");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=273.73,33.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=88.17,28.44");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=148.02,75.73");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=103.76,1.09");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=300.94,67.23");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=72.87,175.92");
    }

}

