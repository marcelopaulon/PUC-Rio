
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-5
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
        @display("p=241.00,144.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=183.77,223.82");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=144.16,162.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=196.21,189.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=155.35,233.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=250.37,228.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=225.27,211.89");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=219.52,238.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=183.45,258.82");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=221.12,120.34");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=122.76,270.90");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=104.50,139.48");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=221.18,221.46");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=237.10,266.30");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=283.27,187.73");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=243.77,213.58");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=217.92,277.67");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=145.83,343.40");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=287.50,153.91");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=253.54,240.44");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=222.80,154.83");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=207.43,182.90");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=140.01,200.22");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=269.84,147.48");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=218.77,201.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=222.85,258.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=175.11,353.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=213.79,136.00");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=203.20,201.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=186.83,172.80");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=228.95,95.47");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=81.66,238.59");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=299.48,273.03");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=321.88,190.62");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=193.63,282.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=216.47,295.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=320.13,99.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=280.98,228.57");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=112.02,113.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=272.07,210.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=178.37,207.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=303.96,305.01");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=252.57,181.21");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=285.61,289.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=173.05,267.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=303.67,79.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=131.68,281.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=45.31,171.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=245.72,190.78");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=78.14,250.19");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=342.88,193.63");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=239.10,118.87");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=221.49,177.82");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=246.92,275.68");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=226.03,142.49");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=143.20,295.20");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=81.25,208.51");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=211.69,146.24");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=187.71,161.91");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=339.00,239.17");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=263.94,188.88");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=298.70,238.93");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=108.62,313.89");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=264.66,175.65");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=125.32,255.83");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=161.47,180.10");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=149.98,202.28");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=235.70,293.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=274.02,237.65");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=180.90,193.32");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=236.30,233.46");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=203.86,286.31");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=267.00,162.75");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=179.62,236.63");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=141.74,259.40");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=181.48,99.84");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=205.31,245.90");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=181.91,274.89");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=309.07,160.68");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=278.28,281.01");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=160.34,274.04");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=239.60,156.26");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=100.57,274.40");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=112.91,246.44");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=194.91,105.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=143.02,227.04");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=300.75,142.94");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=312.89,246.21");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=260.92,281.27");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=235.61,189.71");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=265.20,134.05");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=137.73,184.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=158.14,141.61");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=141.42,212.82");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=125.82,192.55");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=304.25,190.26");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=282.89,141.18");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=194.27,250.07");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=205.62,264.54");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=231.54,129.17");
    }

}

