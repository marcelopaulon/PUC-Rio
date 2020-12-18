
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-8
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
        @display("p=484.00,714.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=536.67,796.29");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=481.82,776.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=419.69,775.10");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=414.07,733.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=415.63,745.26");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=387.00,767.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=301.06,718.93");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=237.94,792.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=218.70,773.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=274.85,762.55");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=315.51,796.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=280.16,740.51");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=467.59,673.57");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=510.78,795.54");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=460.01,740.66");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=460.89,770.78");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=425.33,717.74");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=356.74,768.89");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=386.84,693.26");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=341.68,682.93");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=166.92,759.15");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=243.30,746.79");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=259.68,671.59");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=406.65,756.13");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=269.31,700.59");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=488.85,742.30");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=618.70,767.16");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=519.28,755.69");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=393.65,795.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=336.17,672.31");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=452.27,759.06");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=316.12,742.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=367.10,741.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=293.06,792.47");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=170.47,744.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=293.79,780.88");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=349.40,752.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=257.97,652.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=444.71,678.91");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=597.31,761.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=505.44,754.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=470.41,748.33");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=326.22,695.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=417.30,759.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=403.59,766.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=284.29,643.34");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=245.50,770.02");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=149.91,745.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=286.99,753.87");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=340.00,786.94");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=287.86,726.82");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=504.78,771.47");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=568.10,784.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=513.05,702.22");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=469.91,783.33");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=331.12,715.56");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=427.22,747.19");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=368.75,716.54");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=297.89,744.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=249.81,781.78");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=203.12,747.61");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=264.87,774.84");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=327.29,791.76");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=312.57,726.25");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=537.88,738.34");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=513.02,782.29");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=562.99,725.55");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=465.06,793.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=411.99,705.21");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=367.68,757.07");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=453.53,713.30");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=302.60,674.54");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=300.53,765.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=256.76,765.36");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=265.08,728.68");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=346.38,779.07");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=252.68,740.20");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=434.91,702.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=605.18,775.69");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=557.50,799.09");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=500.20,785.54");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=418.38,676.37");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=386.76,751.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=387.66,727.49");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=298.71,705.84");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=177.21,775.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=149.81,719.81");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=188.92,721.73");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=288.56,768.42");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=255.85,753.79");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=415.05,658.54");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=522.61,789.57");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=397.77,726.11");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=368.66,798.71");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=348.24,701.45");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=357.74,735.47");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=395.82,779.75");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=221.85,703.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=234.64,755.22");
    }

}

