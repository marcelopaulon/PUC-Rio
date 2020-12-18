
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
        @display("p=53.46,233.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=78.21,305.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=99.37,360.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=176.25,328.62");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=95.06,333.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=98.91,381.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=32.68,313.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=89.80,282.38");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=18.33,248.88");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=36.77,256.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=11.86,259.69");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=11.20,206.25");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=127.38,255.55");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=66.80,230.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=86.93,315.71");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=131.21,339.06");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=122.44,352.32");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=16.44,299.77");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=70.26,388.77");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=91.77,256.33");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=119.42,273.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=114.73,239.52");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=54.02,280.29");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=43.63,331.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=35.25,231.32");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=144.23,320.00");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=14.87,187.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=139.46,281.72");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=88.57,354.74");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=186.55,325.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=91.13,305.86");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=7.28,368.20");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=106.25,315.66");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=129.41,292.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=29.23,240.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=85.51,225.80");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=34.13,270.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=22.41,136.55");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=128.48,319.40");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=75.19,240.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=15.34,345.85");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=168.31,293.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=203.14,380.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=86.13,344.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=166.23,365.96");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=37.62,288.75");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=100.51,275.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=95.71,202.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=114.43,290.49");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=28.95,345.42");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=54.83,135.36");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=70.05,321.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=49.85,158.93");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=84.08,295.10");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=52.47,320.41");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=141.07,258.63");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=23.77,279.81");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=87.69,393.97");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=121.70,303.72");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=80.70,209.52");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=18.63,227.18");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=48.57,192.18");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=6.19,293.53");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=93.92,190.09");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=111.28,303.71");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=107.37,200.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=134.93,353.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=66.22,361.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=213.28,305.25");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=47.18,398.81");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=102.60,370.69");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=55.34,331.10");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=73.77,291.86");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=117.37,250.51");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=64.24,255.91");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=25.10,189.34");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=38.27,209.36");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=70.45,272.00");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=96.53,212.28");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=61.21,344.95");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=50.93,309.33");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=131.80,366.42");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=126.91,383.68");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=100.60,398.10");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=48.69,377.90");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=81.22,331.00");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=50.37,265.24");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=52.47,254.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=69.92,197.44");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=42.36,136.74");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=162.18,355.98");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=26.40,215.70");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=79.58,250.51");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=86.60,370.43");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=144.72,346.39");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=161.22,327.58");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=183.82,336.48");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=11.69,312.80");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=124.47,230.86");
    }

}

