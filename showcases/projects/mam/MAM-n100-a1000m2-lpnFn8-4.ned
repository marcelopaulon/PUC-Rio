
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-4
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
        @display("p=256.00,678.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=324.14,670.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=306.48,652.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=322.36,638.58");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=288.43,675.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=277.31,758.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=306.27,814.88");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=338.97,810.43");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=310.92,800.21");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=366.43,746.49");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=336.83,776.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=404.78,794.11");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=328.01,752.92");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=298.71,684.40");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=329.67,710.22");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=314.53,661.49");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=273.71,615.86");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=355.22,612.86");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=289.96,789.53");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=320.99,800.99");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=362.48,907.54");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=346.71,766.07");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=410.96,709.13");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=299.51,705.80");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=421.62,849.65");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=249.69,708.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=237.15,677.13");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=290.17,591.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=261.26,655.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=295.43,632.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=281.32,632.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=240.99,767.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=284.67,840.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=347.64,826.08");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=308.88,737.47");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=370.28,704.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=351.17,784.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=413.11,803.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=330.15,736.36");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=308.92,757.45");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=298.30,644.17");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=324.36,687.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=290.22,551.12");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=365.37,628.14");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=232.64,686.11");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=282.30,817.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=352.33,750.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=314.12,776.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=267.62,731.36");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=331.08,871.01");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=423.11,811.19");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=231.38,736.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=255.81,720.91");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=353.18,661.27");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=248.93,650.97");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=293.30,572.29");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=336.86,659.00");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=352.66,704.17");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=380.96,825.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=346.61,800.01");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=248.42,809.70");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=337.69,827.82");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=334.92,860.01");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=371.36,763.27");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=286.17,741.21");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=262.15,752.16");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=338.96,694.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=354.54,736.82");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=247.57,614.98");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=336.85,681.09");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=282.71,780.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=259.02,796.29");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=313.18,834.91");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=277.94,800.46");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=354.79,809.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=338.14,760.59");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=392.61,800.53");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=237.22,750.48");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=236.20,658.62");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=304.55,716.24");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=239.72,702.45");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=362.40,565.97");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=295.21,605.20");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=271.41,814.11");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=306.93,893.45");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=293.56,846.69");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=252.90,853.32");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=317.32,710.44");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=259.17,739.04");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=393.20,726.03");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=395.70,737.46");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=270.47,743.96");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=392.61,715.41");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=397.94,635.90");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=267.12,561.91");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=219.46,712.39");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=194.04,744.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=321.18,790.42");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=349.51,881.01");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=263.15,806.72");
    }

}

