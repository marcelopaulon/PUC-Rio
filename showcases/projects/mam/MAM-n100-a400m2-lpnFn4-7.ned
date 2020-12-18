
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-7
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
        @display("p=70.00,81.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=40.11,72.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=42.66,35.79");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=83.21,66.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=153.28,82.51");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=143.18,118.51");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=131.08,182.09");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=128.32,208.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=186.91,168.39");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=97.74,133.12");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=140.71,79.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=160.87,3.58");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=196.52,22.94");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=237.36,44.54");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=178.57,76.58");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=177.63,150.57");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=197.74,196.79");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=182.38,205.65");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=244.95,236.90");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=196.66,110.60");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=215.44,116.93");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=208.76,96.14");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=251.56,132.89");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=246.15,170.95");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=291.67,102.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=49.75,49.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=14.43,112.02");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=36.52,27.22");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=3.94,89.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=111.40,21.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=56.53,112.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=136.59,170.57");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=122.30,220.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=193.34,142.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=129.56,147.21");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=164.17,103.66");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=206.42,53.08");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=109.31,31.88");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=211.40,4.83");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=142.35,4.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=268.78,117.82");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=183.11,262.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=258.95,241.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=311.22,195.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=110.95,117.09");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=229.54,154.04");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=278.50,83.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=228.61,170.96");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=169.23,231.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=262.68,127.67");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=30.25,134.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=6.52,48.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=130.47,21.99");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=84.39,48.71");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=208.21,41.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=69.45,100.83");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=112.23,225.87");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=110.57,188.73");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=210.01,216.85");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=180.44,181.63");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=193.74,54.40");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=162.15,48.97");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=268.20,70.29");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=171.23,22.48");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=242.68,13.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=164.58,246.69");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=216.62,241.86");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=208.85,283.44");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=267.22,231.51");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=194.18,67.17");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=254.02,108.71");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=242.93,69.33");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=165.37,139.82");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=230.19,122.28");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=286.25,179.35");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=77.52,89.35");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=34.69,125.84");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=56.19,30.01");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=90.49,11.61");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=78.02,130.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=146.47,196.42");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=150.24,253.31");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=98.54,200.90");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=185.98,122.79");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=96.25,122.75");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=205.07,14.86");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=121.75,86.60");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=192.98,39.17");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=209.87,85.65");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=264.12,38.32");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=216.00,182.55");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=239.98,196.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=226.49,132.70");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=268.96,317.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=162.00,66.29");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=286.95,116.86");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=237.47,132.42");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=309.62,54.83");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=300.31,169.93");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=268.45,55.93");
    }

}

