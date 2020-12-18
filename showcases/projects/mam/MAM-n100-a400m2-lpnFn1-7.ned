
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn1-7
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
        @display("p=174.00,225.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=212.37,153.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=256.79,216.59");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=238.12,212.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=239.54,182.31");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=334.51,176.54");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=337.15,158.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=381.71,182.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=371.89,153.12");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=395.09,139.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=389.63,116.03");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=373.23,114.86");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=337.54,72.74");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=370.88,6.62");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=354.65,42.93");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=380.24,58.61");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=386.29,28.49");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=398.27,31.21");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=355.64,18.45");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=337.47,3.16");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=320.88,27.26");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=256.84,20.80");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=239.88,34.14");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=274.26,16.22");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=333.62,45.11");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=337.92,34.57");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=311.22,107.22");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=385.51,105.18");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=330.91,124.23");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=314.87,187.69");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=320.24,148.67");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=294.77,82.78");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=271.41,120.47");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=286.38,111.25");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=324.22,52.31");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=344.18,88.55");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=393.36,126.58");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=351.71,187.98");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=280.25,230.59");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=318.49,173.19");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=256.99,236.14");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=277.92,194.42");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=311.64,204.34");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=271.58,248.30");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=210.04,235.09");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=266.71,214.43");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=256.08,188.42");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=207.69,210.22");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=251.51,160.00");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=229.07,133.32");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=285.01,275.62");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=282.62,301.57");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=267.33,399.63");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=313.51,389.97");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=217.27,394.06");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=155.97,342.52");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=75.39,305.69");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=68.08,318.53");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=90.20,370.87");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=146.62,360.76");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=147.89,326.12");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=99.04,319.48");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=48.48,331.90");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=59.90,339.25");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=76.72,336.84");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=106.56,372.69");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=54.33,377.04");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=39.99,355.79");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=22.59,350.13");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=33.35,300.67");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=43.32,296.98");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,228.63");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=50.34,219.93");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=40.72,128.50");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=112.00,79.65");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=79.20,95.64");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=37.04,68.16");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=25.15,91.82");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=32.25,139.50");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=19.10,176.05");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=71.17,190.72");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=153.50,182.94");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=190.99,267.66");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=215.94,358.84");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=249.83,255.24");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=268.63,262.28");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=285.05,239.60");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=225.48,205.44");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=165.35,270.18");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=210.67,221.24");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=189.13,240.51");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=203.08,313.49");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=245.91,331.58");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=295.36,302.06");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=324.22,396.08");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=365.62,322.70");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=379.62,314.53");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=315.06,281.40");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=303.99,327.54");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=323.74,242.56");
    }

}

