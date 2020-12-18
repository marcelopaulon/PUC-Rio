
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-0
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
        @display("p=91.00,85.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=128.78,76.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=155.96,29.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=198.87,33.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=231.08,41.25");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=273.43,76.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=304.73,50.08");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=312.83,140.78");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=296.01,103.71");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=36.27,87.10");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=165.13,49.99");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=155.27,16.25");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=195.37,99.51");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=267.39,45.99");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=319.69,90.66");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=342.44,39.89");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=318.43,154.01");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=312.26,166.10");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=64.81,24.08");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=117.56,66.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=104.76,65.93");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=167.13,7.88");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=263.59,59.88");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=252.30,85.47");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=327.63,15.34");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=370.94,176.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=300.50,63.77");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=157.01,106.89");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=172.31,73.19");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=205.35,74.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=188.85,46.65");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=162.03,81.05");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=287.73,36.65");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=384.84,1.19");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=397.91,185.27");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=344.59,119.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=38.61,97.44");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=137.71,130.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=152.54,67.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=231.24,2.51");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=220.46,136.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=282.11,84.87");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=289.61,61.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=390.45,78.36");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=352.16,131.85");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=31.94,68.36");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=104.05,33.57");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=218.76,47.60");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=217.64,20.59");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=286.51,25.75");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=296.71,31.37");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=348.93,22.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=321.98,202.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=256.65,129.71");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=76.30,87.82");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=104.82,94.50");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=111.01,7.97");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=253.87,42.72");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=300.68,17.87");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=295.31,146.91");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=309.97,94.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=236.06,196.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=334.12,62.89");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=138.50,48.38");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=138.97,104.68");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=175.92,56.77");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=242.92,16.37");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=200.09,2.48");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=320.94,63.91");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=236.64,25.26");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=256.52,116.21");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=241.74,123.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=65.65,162.60");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=141.46,73.78");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=110.78,20.14");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=210.50,54.27");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=223.73,87.94");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=281.17,97.08");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=273.32,134.29");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=334.63,137.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=300.35,82.40");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=82.59,18.65");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=75.78,35.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=141.05,59.32");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=261.05,30.69");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=279.36,18.64");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=302.24,1.99");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=263.00,91.70");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=349.24,105.21");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=273.01,103.38");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=174.03,100.00");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=79.62,71.40");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=165.68,64.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=123.44,90.37");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=180.11,110.49");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=336.10,76.45");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=338.84,104.33");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=326.44,128.95");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=259.55,169.41");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=144.89,84.77");
    }

}

