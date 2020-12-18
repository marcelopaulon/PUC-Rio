
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_8
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
        @display("p=71.96,234.39");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=85.25,180.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=104.66,157.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=115.93,179.68");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=58.44,216.18");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=51.39,312.14");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=49.09,225.71");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=19.48,233.86");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=78.21,252.21");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=54.91,277.19");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=53.52,334.18");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=144.07,307.01");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=144.42,320.77");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=115.34,297.42");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=129.40,218.53");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=106.52,275.53");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=125.79,297.75");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=44.30,354.44");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=80.41,352.05");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=66.14,362.98");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=80.69,334.95");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=71.29,297.01");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=10.58,255.88");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=57.77,242.13");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=142.71,268.06");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=88.18,243.03");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=143.37,136.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=94.18,187.83");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=36.05,212.06");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=13.36,182.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=126.07,311.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=7.05,289.82");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=18.52,205.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=133.62,231.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=96.74,315.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=75.91,273.85");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=178.23,333.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=143.70,361.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=170.31,348.02");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=166.12,243.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=151.05,247.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=122.20,207.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=4.20,354.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=26.42,386.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=47.94,377.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=104.48,383.70");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=104.08,246.99");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=33.31,321.30");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=23.33,253.84");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=95.24,287.93");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=117.23,195.90");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=66.66,145.91");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=31.12,108.49");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=133.44,168.75");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=57.69,139.21");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=49.56,323.41");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=104.05,258.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=27.38,243.46");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=42.27,299.96");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=43.50,282.93");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=88.01,383.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=176.00,272.14");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=203.57,292.07");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=63.61,255.75");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=207.20,220.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=119.57,271.37");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=123.00,249.25");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=114.65,340.80");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=91.75,351.32");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=0.95,337.06");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=71.76,320.06");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=62.81,270.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=16.79,266.27");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=86.60,203.46");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=71.69,283.83");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=111.09,210.86");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=26.52,161.25");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=104.87,168.46");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=100.12,209.19");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=77.12,210.07");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=21.23,318.77");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=87.82,218.08");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=30.10,310.62");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=115.69,329.97");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=97.00,363.93");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=19.42,354.91");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=230.55,317.00");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=66.14,378.56");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=95.41,332.07");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=208.36,275.53");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=108.63,348.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=127.93,284.36");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=6.95,369.24");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=156.58,301.14");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=62.51,343.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=95.78,391.27");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=149.36,333.30");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=29.48,295.58");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=137.65,251.99");
    }

}

