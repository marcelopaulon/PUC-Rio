
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_0
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
        @display("p=53.55,294.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=29.42,325.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=43.97,245.58");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=101.59,195.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=116.00,209.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=98.94,220.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=54.99,235.21");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=70.20,142.60");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=126.44,284.11");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=36.31,311.60");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=0.94,344.26");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=20.76,206.81");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=114.24,172.07");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=51.00,202.25");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=74.03,251.12");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=87.91,163.30");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=20.41,153.23");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=101.74,312.15");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=66.13,206.32");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=26.29,349.35");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=49.32,267.76");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=77.29,169.61");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=123.24,223.14");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=114.34,254.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=36.35,183.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=60.30,134.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=93.21,341.24");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=73.76,290.86");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=36.13,294.33");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=30.76,258.08");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=55.23,222.67");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=134.06,209.48");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=113.09,196.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=37.27,266.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=24.49,221.33");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=17.70,323.42");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=43.98,301.91");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=42.35,344.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=17.58,289.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=125.11,184.18");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=112.55,297.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=181.71,174.94");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=44.33,223.49");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=63.44,65.26");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=16.04,279.39");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=101.28,376.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=14.05,340.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=101.82,238.35");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=86.30,228.70");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=149.86,211.03");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=142.03,133.92");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=71.62,228.55");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=81.07,152.14");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=156.95,269.76");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=77.05,321.30");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=34.35,335.63");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=136.93,261.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=131.73,237.51");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=162.79,162.86");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=68.08,309.93");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=137.24,250.59");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=54.26,146.75");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=79.89,392.28");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=121.62,323.17");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=55.54,312.17");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=97.54,265.74");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=106.02,178.09");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=133.49,296.49");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=92.37,188.95");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=26.71,237.50");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=8.68,167.91");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=170.18,281.53");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=60.08,258.63");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=89.76,297.78");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=92.65,254.83");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=193.84,221.90");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=39.97,195.07");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=131.66,147.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=36.59,160.51");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=109.27,128.02");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=63.71,354.34");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=83.41,269.08");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=54.82,393.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=7.00,299.42");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=106.57,113.78");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=178.06,245.55");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=155.50,255.77");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=88.66,206.13");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=170.00,137.62");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=94.74,283.61");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=65.13,391.11");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=44.83,327.80");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=3.11,243.11");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=102.82,209.77");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=170.44,171.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=137.07,223.31");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=26.22,270.80");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=21.79,80.95");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=187.25,326.83");
    }

}

