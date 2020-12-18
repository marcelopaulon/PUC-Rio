
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_2
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=47.57,720.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=25.09,766.65");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=11.87,791.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=60.81,727.27");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=144.32,746.73");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=129.42,686.12");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=150.54,654.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=226.37,617.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=294.34,588.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=235.60,641.11");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=293.69,691.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=305.74,749.15");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=297.75,788.34");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=347.90,791.42");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=428.21,778.93");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=521.13,773.64");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=471.65,740.54");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=502.68,771.78");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=517.97,744.97");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=484.25,672.64");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=531.08,684.72");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=562.43,637.67");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=521.80,628.82");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=543.81,609.15");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=97.18,720.93");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=55.29,628.97");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=13.63,770.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=27.54,732.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=48.65,738.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=209.60,795.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=186.22,736.31");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=149.05,625.52");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=235.88,621.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=278.97,581.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=288.00,715.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=310.78,668.32");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=258.18,690.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=301.19,767.21");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=390.61,750.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=439.93,725.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=497.22,752.46");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=489.94,701.69");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=580.44,772.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=492.32,768.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=553.70,616.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=542.00,679.15");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=609.76,617.32");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=581.97,671.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=594.86,606.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=124.50,711.63");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=96.64,775.36");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=59.68,675.49");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=85.97,777.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=67.95,704.59");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=146.14,774.10");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=69.77,624.14");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=183.84,702.19");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=250.78,642.08");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=247.53,570.40");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=240.63,579.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=321.44,749.50");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=235.78,775.39");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=283.42,783.37");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=303.53,725.43");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=450.58,769.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=605.89,758.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=464.68,764.38");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=500.75,734.09");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=544.02,787.47");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=456.95,704.69");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=563.78,683.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=531.24,582.63");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=444.83,583.43");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=600.70,581.51");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=74.06,737.96");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=125.98,676.58");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=2.80,778.20");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=13.72,750.33");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=83.89,684.83");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=202.30,733.22");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=89.47,755.93");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=122.25,615.01");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=139.64,600.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=315.57,601.38");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=260.85,622.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=345.79,731.96");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=329.76,727.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=321.04,783.73");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=339.87,767.48");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=466.91,715.74");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=601.10,737.16");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=476.31,729.10");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=474.00,781.55");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=539.09,775.46");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=441.54,683.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=515.69,672.07");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=592.38,675.27");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=478.26,713.56");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=505.32,663.55");
    }

}

