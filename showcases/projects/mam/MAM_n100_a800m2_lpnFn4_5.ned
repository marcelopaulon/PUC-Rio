
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_5
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=64.08,784.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=24.93,706.78");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=96.40,740.35");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=60.59,765.81");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=33.66,746.32");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=45.17,733.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=0.68,672.75");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=24.99,679.79");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=32.45,662.21");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=10.19,643.73");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=47.41,667.17");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=44.89,718.28");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=81.16,698.78");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=63.26,743.04");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=112.70,735.45");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=102.41,671.75");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=99.63,648.11");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=97.74,726.25");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=142.40,739.65");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=226.89,770.26");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=316.83,777.68");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=364.75,731.56");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=314.55,738.25");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=334.90,771.06");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=122.59,684.25");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=49.51,785.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=75.85,712.90");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=19.48,792.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=45.67,685.15");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=37.21,763.04");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=83.25,676.70");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=9.15,686.77");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=93.89,620.75");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=10.13,628.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=15.20,552.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=68.59,627.77");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=62.34,698.23");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=78.61,650.71");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=51.20,746.08");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=81.92,749.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=157.98,650.91");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=137.56,589.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=35.62,712.31");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=186.33,747.13");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=185.01,686.02");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=279.71,769.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=368.11,689.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=298.63,674.04");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=268.47,791.18");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=34.36,687.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=16.13,727.53");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=18.49,756.39");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=155.24,799.13");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=13.21,773.74");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=9.39,794.55");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=59.67,723.47");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=33.30,673.14");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=44.47,641.92");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=115.25,628.31");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=79.67,624.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=95.83,687.35");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=36.85,785.96");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=92.85,794.54");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=55.89,734.01");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=123.93,744.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=48.54,698.79");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=77.44,607.86");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=142.88,711.99");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=76.16,765.24");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=258.78,767.99");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=265.65,707.76");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=356.55,719.97");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=376.35,750.46");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=299.57,734.44");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=110.87,697.76");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=69.19,797.27");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=91.10,707.18");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=96.96,772.09");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=15.44,699.12");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=27.96,737.46");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=9.19,660.30");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=11.48,675.62");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=19.22,633.29");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=90.86,656.62");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=33.46,564.14");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=91.72,588.79");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=73.12,755.34");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=162.12,701.68");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=65.77,650.90");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=107.34,717.75");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=155.68,661.97");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=58.08,670.96");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=34.67,722.44");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=187.42,727.85");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=236.16,779.26");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=389.94,739.74");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=320.37,653.55");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=222.04,744.85");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=265.77,750.97");
    }

}

