
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_5
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=151.67,178.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=104.67,197.06");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=152.29,196.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=187.42,223.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=193.48,246.65");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=172.38,296.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=147.86,310.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=174.81,368.51");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=153.04,117.59");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=154.83,151.28");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=128.33,119.69");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=161.52,140.14");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=172.57,156.70");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=140.61,256.79");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=111.81,310.98");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=236.87,321.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=119.04,348.21");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=76.47,180.27");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=178.67,93.71");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=180.22,247.91");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=145.08,155.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=175.39,238.98");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=207.36,243.77");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=105.26,367.82");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=176.09,315.74");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=204.47,324.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=85.70,107.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=194.76,182.70");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=113.55,169.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=134.29,189.70");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=228.14,167.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=127.64,214.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=122.96,273.81");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=74.87,313.87");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=154.29,337.95");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=122.86,29.16");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=188.89,110.91");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=124.29,230.35");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=125.69,131.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=159.64,219.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=187.05,202.13");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=101.58,313.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=85.92,262.17");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=141.09,319.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=70.01,121.56");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=178.67,211.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=46.27,176.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=176.35,184.09");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=150.17,141.83");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=143.24,227.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=151.21,369.62");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=63.38,358.82");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=151.26,279.22");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=48.85,17.90");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=106.69,120.69");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=113.79,247.66");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=132.39,155.45");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=262.57,215.22");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=269.34,196.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=174.62,327.08");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=162.04,353.23");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=172.80,385.52");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=100.84,166.33");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=138.43,111.39");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=89.00,195.04");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=207.54,121.47");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=235.41,183.48");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=265.83,266.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=223.58,318.22");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=84.15,235.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=210.41,282.48");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=134.46,30.84");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=93.51,207.12");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=134.95,221.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=66.13,201.63");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=202.15,220.33");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=234.83,158.98");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=188.09,280.25");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=89.12,274.94");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=124.48,313.03");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=90.38,83.57");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=92.70,141.03");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=63.36,216.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=182.99,191.98");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=129.36,204.18");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=155.39,249.29");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=210.34,308.95");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=132.13,403.33");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=203.70,413.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=79.01,86.19");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=204.76,152.78");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=73.77,216.41");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=206.35,266.46");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=162.90,261.82");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=216.25,186.81");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=219.05,260.33");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=54.48,300.73");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=146.64,407.39");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=38.42,154.27");
    }

}

