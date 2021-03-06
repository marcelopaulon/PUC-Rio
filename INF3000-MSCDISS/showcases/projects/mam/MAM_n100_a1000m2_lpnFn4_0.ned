
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_0
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
        @display("p=115.84,119.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=175.33,139.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=147.29,150.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=162.98,154.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=133.32,125.57");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=84.92,55.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=134.13,65.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=72.85,48.00");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=48.83,30.38");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=144.77,30.36");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=162.75,46.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=76.19,32.59");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=53.66,55.06");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=20.55,105.40");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=74.86,165.20");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=11.25,176.18");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=39.75,99.79");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=17.43,128.11");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=21.06,82.76");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=21.69,19.65");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=46.74,40.41");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=26.92,58.37");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=119.83,61.75");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=44.95,72.95");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=114.67,12.61");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=145.61,119.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=112.39,76.12");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=147.68,175.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=148.82,221.06");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=69.54,127.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=102.79,84.88");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=151.38,54.08");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=63.80,91.13");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=75.33,12.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=200.40,58.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=122.72,43.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=34.32,114.45");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=84.98,69.82");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=28.15,95.20");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=30.26,133.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=81.24,208.53");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=103.56,138.21");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=35.35,178.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=7.92,60.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=22.68,30.36");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=134.18,11.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=38.33,46.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=176.66,25.29");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=106.24,22.61");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=146.05,133.35");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=137.68,52.48");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=218.91,82.29");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=202.07,153.42");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=111.35,179.68");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=168.84,173.52");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=97.91,64.33");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=185.51,75.38");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=98.45,47.17");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=49.23,117.14");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=172.53,87.74");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=187.23,126.84");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=97.44,110.52");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=50.93,87.60");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=57.20,22.92");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=9.84,144.38");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=23.22,184.15");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=7.26,71.05");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=44.63,133.60");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=1.71,83.04");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=102.75,10.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=95.60,19.96");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=38.92,14.96");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=65.46,2.07");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=127.99,102.71");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=56.24,98.83");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=200.86,142.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=189.91,140.42");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=201.05,110.24");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=94.51,155.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=156.82,131.76");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=80.36,103.92");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=123.10,27.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=111.65,45.69");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=100.49,35.11");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=171.49,125.47");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=165.30,110.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=153.93,38.86");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=63.88,61.20");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=30.08,72.27");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=67.57,77.53");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=7.04,255.11");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=56.32,186.63");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=67.59,141.47");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=49.07,156.22");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=60.25,35.96");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=113.67,103.29");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=78.90,143.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=125.35,76.49");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=21.61,43.97");
    }

}

