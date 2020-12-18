
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_6
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
        @display("p=92.53,123.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=96.33,193.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=36.25,244.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=115.25,299.02");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=71.64,234.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=146.17,238.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=157.51,259.76");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=148.04,295.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=238.18,300.44");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=308.90,288.62");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=356.76,212.94");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=353.35,227.46");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=90.43,105.96");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=33.04,90.34");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=135.41,193.82");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=64.73,271.58");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=169.88,254.67");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=71.80,216.68");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=81.92,314.22");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=248.76,255.57");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=154.45,224.73");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=256.99,279.31");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=293.20,318.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=424.46,259.65");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=337.94,295.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=31.96,60.40");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=114.23,29.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=128.38,212.46");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=108.14,228.06");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=119.47,336.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=78.24,205.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=130.43,229.20");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=221.43,255.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=125.33,359.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=195.16,377.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=246.82,241.29");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=436.68,154.31");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=287.14,240.15");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=110.16,60.39");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=62.93,51.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=103.81,203.65");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=63.60,149.33");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=122.95,239.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=140.23,284.76");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=88.10,202.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=205.52,209.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=167.12,292.83");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=215.97,208.05");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=267.28,258.68");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=339.90,217.58");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=305.16,161.47");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=74.09,169.88");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=124.20,127.21");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=99.16,161.13");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=43.81,220.68");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=109.49,315.01");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=66.55,200.45");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=160.06,304.59");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=184.20,182.66");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=170.91,309.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=221.22,308.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=300.37,280.80");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=346.11,208.49");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=359.22,285.07");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=93.89,89.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=105.37,119.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=63.10,116.48");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=117.14,219.48");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=58.70,241.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=14.74,242.81");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=170.69,189.70");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=68.89,290.05");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=135.54,271.04");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=186.39,230.06");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=310.62,241.48");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=330.25,196.82");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=282.93,228.99");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=80.61,15.50");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=154.11,158.27");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=105.33,284.60");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=51.26,197.11");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=119.00,349.14");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=153.62,250.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=127.46,320.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=224.88,237.56");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=115.99,368.15");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=257.31,306.19");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=349.00,350.15");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=360.09,237.23");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=425.86,293.43");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=69.99,40.82");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=83.57,94.42");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=34.05,265.01");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=36.93,281.61");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=135.49,294.04");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=45.56,209.81");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=47.62,241.32");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=174.41,335.38");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=220.32,282.07");
    }

}

