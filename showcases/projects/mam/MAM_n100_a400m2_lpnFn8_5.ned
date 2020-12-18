
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_5
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
        @display("p=100.53,315.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=118.04,367.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=125.82,384.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=138.78,373.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=140.03,285.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=128.51,285.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=62.75,261.68");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=150.60,299.10");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=165.03,289.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=174.90,315.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=155.73,267.18");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=77.23,296.29");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=107.81,326.53");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=44.95,342.52");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=23.65,362.26");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=111.91,286.25");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=149.38,359.07");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=219.46,278.99");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=124.05,334.71");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=16.86,232.40");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=206.50,338.48");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=154.20,281.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=144.15,276.66");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=196.56,257.99");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=72.40,365.24");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=124.63,228.15");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=169.12,346.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=81.31,383.68");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=61.07,368.27");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=119.96,352.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=156.81,205.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=131.54,196.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=121.19,245.53");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=136.91,313.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=248.07,296.46");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=207.29,381.39");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=199.78,279.57");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=52.99,316.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=102.94,239.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=52.15,258.22");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=104.56,369.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=198.42,373.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,351.05");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=192.31,229.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=188.97,242.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=42.79,272.97");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=176.51,245.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=85.76,306.00");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=166.97,305.65");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=153.80,188.84");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=69.36,317.43");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=131.79,219.45");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=133.14,277.04");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=167.24,329.97");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=158.38,319.33");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=50.13,369.16");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=120.79,306.10");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=161.58,369.10");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=25.04,219.40");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,328.54");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=201.42,244.25");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=179.63,324.07");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=236.09,247.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=96.14,393.97");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=54.67,270.05");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=155.79,388.33");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=93.52,380.80");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=132.06,345.37");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=226.07,338.28");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=89.37,202.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=136.24,239.40");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=53.62,218.42");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=172.89,255.20");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=182.41,304.11");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=224.49,240.71");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=172.88,206.37");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=131.34,256.54");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=72.57,280.96");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=182.29,268.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=101.09,340.28");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=193.50,322.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=140.36,385.64");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=111.66,213.50");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=110.36,310.14");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=67.78,291.83");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=100.02,281.94");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=186.95,205.64");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=208.41,271.42");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=171.05,223.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=25.72,319.10");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=34.93,349.57");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=86.46,238.76");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=184.52,377.55");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=191.50,387.78");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=115.72,378.40");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=180.05,358.73");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=84.86,250.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=60.35,232.63");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=110.93,262.59");
    }

}

