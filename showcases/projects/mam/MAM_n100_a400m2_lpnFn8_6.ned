
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_6
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
        @display("p=103.10,386.02");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=122.07,388.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=61.28,321.10");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=114.40,241.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=49.98,257.43");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=82.47,250.74");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=70.26,152.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=70.83,94.71");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=64.11,81.51");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=57.36,49.04");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=105.73,5.84");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=89.48,13.83");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=22.80,289.35");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=93.98,360.49");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=106.96,365.10");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=22.07,337.99");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=110.50,197.85");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=37.76,231.70");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=100.57,260.16");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=35.23,195.59");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=113.99,39.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=79.93,171.46");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=64.55,127.46");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=140.45,22.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=85.79,2.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=146.38,317.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=138.95,369.54");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=162.49,379.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=35.77,355.83");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=113.20,168.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=52.92,240.18");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=119.94,293.38");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=81.33,224.91");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=78.79,136.51");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=16.98,37.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=53.63,100.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=174.28,55.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=102.61,85.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=167.34,328.42");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=122.74,314.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=123.81,328.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=73.43,324.21");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=170.02,202.02");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=108.54,187.97");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=89.65,241.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=116.27,110.89");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=95.10,100.53");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=48.25,122.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=43.10,67.98");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=154.77,5.75");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=100.21,60.56");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=51.83,219.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=76.78,339.82");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=94.38,311.06");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=68.38,310.63");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=201.49,220.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=10.81,207.84");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=77.19,274.82");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=122.66,194.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=43.53,25.85");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=61.07,112.76");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=70.22,60.14");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=108.33,30.31");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=123.49,22.96");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=173.37,271.99");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=146.20,332.04");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=164.89,396.90");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=65.56,377.68");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=124.14,179.38");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=43.71,246.61");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=12.34,261.33");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=52.81,145.53");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=59.42,189.33");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=42.74,92.56");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=95.53,27.41");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=130.66,7.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=108.81,99.76");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=74.49,300.91");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=103.79,354.89");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=52.80,376.35");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=104.91,334.47");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=117.38,278.57");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=27.51,278.50");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=130.06,303.53");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=99.65,118.40");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=136.59,58.47");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=25.15,64.85");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=42.56,57.82");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=117.72,75.98");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=74.99,30.86");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=78.23,367.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=92.95,382.76");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=61.00,349.05");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=84.34,349.38");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=116.66,142.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=132.46,239.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=35.65,334.24");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=94.90,212.12");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=13.89,71.16");
    }

}

