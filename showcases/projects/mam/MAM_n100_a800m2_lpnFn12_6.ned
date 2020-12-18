
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_6
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
        @display("p=102.19,674.82");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=86.78,677.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=164.62,700.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=243.96,653.60");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=190.87,663.15");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=256.36,652.43");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=272.96,636.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=320.69,649.75");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=43.92,673.66");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=126.69,662.87");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=81.19,667.45");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=144.32,712.96");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=244.33,670.23");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=177.16,645.72");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=285.75,576.76");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=231.18,716.66");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=247.90,623.54");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=70.86,725.82");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=190.87,694.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=83.91,648.46");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=170.05,755.93");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=222.72,679.95");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=212.93,579.99");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=190.17,646.34");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=331.65,631.85");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=365.05,667.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=63.47,741.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=58.32,724.30");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=164.17,652.52");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=174.20,695.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=286.95,661.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=222.32,694.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=257.93,626.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=310.32,596.48");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=323.74,729.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=168.52,729.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=132.62,749.88");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=81.34,591.59");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=246.75,694.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=307.77,727.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=206.61,654.01");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=186.65,673.90");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=309.14,582.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=332.20,667.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=78.53,623.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=92.86,686.53");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=105.01,689.49");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=141.58,781.87");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=262.10,572.92");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=149.00,654.89");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=273.88,676.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=283.68,690.01");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=291.03,740.25");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=155.31,745.52");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=67.86,695.61");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=67.95,664.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=136.43,672.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=314.52,663.58");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=215.79,627.02");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=233.19,632.15");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=307.04,624.54");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=330.15,621.10");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=10.47,673.79");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=57.17,653.69");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=80.40,718.48");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=201.86,678.63");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=262.58,716.57");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=106.34,708.37");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=205.88,637.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=256.03,543.83");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=306.81,683.02");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=33.77,692.26");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=156.08,637.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=87.48,767.06");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=156.04,681.99");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=282.18,615.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=150.69,598.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=248.88,577.24");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=347.06,580.09");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=363.97,643.40");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=86.75,731.83");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=42.35,720.79");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=174.22,672.75");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=120.57,624.96");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=341.07,674.02");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=215.61,749.81");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=262.54,643.01");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=236.85,682.73");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=375.47,669.20");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=128.71,690.57");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=154.89,721.29");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=117.73,670.31");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=144.73,747.99");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=251.09,681.49");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=203.36,621.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=237.60,644.51");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=269.60,626.48");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=392.33,622.78");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=82.39,701.64");
    }

}

