
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_9
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
        @display("p=127.02,268.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=60.46,319.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=77.81,259.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=118.98,244.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=195.39,257.72");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=264.90,279.95");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=281.64,226.40");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=297.16,174.77");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=23.49,360.50");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=95.31,262.69");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=73.31,317.37");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=107.77,220.66");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=108.06,269.12");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=206.09,263.17");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=192.83,243.62");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=298.13,205.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=318.00,196.61");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=121.55,287.96");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=122.52,225.76");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=65.96,330.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=23.64,237.01");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=162.40,313.49");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=211.03,254.27");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=221.14,234.78");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=210.24,240.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=295.07,159.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=137.61,292.51");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=122.42,259.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=18.04,339.82");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=60.00,224.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=61.28,257.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=159.18,278.10");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=346.07,255.30");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=342.81,224.97");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=292.92,109.88");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=98.41,328.19");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=182.52,298.26");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=60.44,285.06");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=91.65,214.23");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=96.44,156.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=242.82,186.91");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=275.80,275.30");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=237.80,169.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=358.83,190.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=159.21,239.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=67.87,230.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=29.62,339.54");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=50.82,245.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=147.40,284.60");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=223.30,275.22");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=238.64,220.56");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=272.04,312.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=375.32,152.32");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=59.54,309.38");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=128.31,237.72");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=110.77,351.87");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=100.98,252.24");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=209.57,224.91");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=167.40,270.06");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=240.38,315.08");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=285.84,214.15");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=264.01,171.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=124.66,319.43");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=209.24,295.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=48.92,292.69");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=50.15,234.93");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=101.80,239.66");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=155.79,198.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=189.75,286.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=272.14,234.66");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=292.31,189.02");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=106.15,280.74");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=182.28,227.53");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=41.18,283.01");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=54.06,329.27");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=193.23,268.10");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=247.59,281.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=294.49,351.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=247.50,205.47");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=223.81,147.84");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=179.18,346.02");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=207.85,312.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=74.19,347.46");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=113.22,295.67");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=180.72,178.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=193.93,229.03");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=273.45,286.86");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=338.61,301.34");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=349.04,90.60");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=149.10,236.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=152.02,254.95");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=61.57,399.61");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=102.42,165.50");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=145.36,192.00");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=136.63,245.27");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=173.51,244.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=273.89,155.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=327.19,151.14");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,313.84");
    }

}

