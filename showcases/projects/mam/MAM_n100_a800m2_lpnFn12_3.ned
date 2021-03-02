
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_3
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
        @display("p=160.64,166.33");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=244.78,189.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=161.57,177.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=158.86,197.43");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=144.36,200.43");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=98.42,239.63");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=120.30,308.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=88.79,338.59");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=90.20,158.87");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=113.16,187.43");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=245.74,209.44");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=170.52,234.90");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=63.27,172.88");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=194.22,133.25");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=115.67,225.82");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=115.22,294.70");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=143.61,311.57");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=116.17,51.62");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=202.15,97.88");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=190.26,248.78");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=138.28,183.74");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=173.62,190.94");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=190.07,214.76");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=154.58,235.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=81.37,316.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=71.61,361.26");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=89.18,67.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=152.46,158.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=281.72,205.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=203.65,208.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=238.83,150.08");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=199.21,224.49");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=102.64,281.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=106.25,349.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=111.26,358.22");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=96.15,85.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=242.00,120.83");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=232.73,192.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=180.99,234.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=75.69,233.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=158.86,208.89");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=101.25,162.94");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=112.69,325.14");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=34.93,327.95");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=118.33,8.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=186.06,196.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=266.24,197.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=166.55,95.85");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=213.73,252.60");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=182.03,138.56");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=39.20,235.74");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=177.20,330.53");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=156.08,338.87");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=152.94,77.41");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=91.93,144.72");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=282.57,193.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=99.19,191.87");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=82.33,215.81");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=125.42,219.29");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=90.97,206.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=184.57,302.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=18.94,338.22");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=159.21,85.59");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=139.76,161.41");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=282.72,183.11");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=203.42,196.33");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=222.14,186.43");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=163.37,141.09");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=170.15,289.54");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=81.00,376.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=82.46,349.12");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=180.30,75.04");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=151.08,108.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=235.28,203.21");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=213.28,233.49");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=226.56,140.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=101.02,206.13");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=94.53,225.49");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=129.86,366.15");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=70.12,343.92");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=84.50,48.76");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=224.45,217.78");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=257.03,165.79");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=92.67,134.52");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=63.47,213.00");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=85.71,192.73");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=61.85,237.47");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=121.99,247.27");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=36.73,313.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=157.72,119.46");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=120.89,143.24");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=235.50,102.57");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=155.04,220.53");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=178.29,103.73");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=155.44,262.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=98.10,301.86");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=148.65,372.46");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=46.62,344.13");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=129.78,66.28");
    }

}

