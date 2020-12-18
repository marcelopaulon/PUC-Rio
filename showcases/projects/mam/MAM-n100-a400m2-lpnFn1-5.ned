
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn1-5
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
        @display("p=146.00,329.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=91.93,396.36");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=104.02,321.24");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=129.78,388.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=176.17,391.50");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=157.81,335.68");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=145.04,340.23");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=130.10,336.31");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=113.78,315.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=78.58,277.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=132.40,290.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=64.32,342.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=15.52,300.24");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=44.88,380.75");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=102.89,307.36");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=124.45,283.89");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=153.59,273.77");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=234.65,294.16");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=327.44,283.76");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=285.81,271.09");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=314.60,194.80");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=326.08,194.46");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=358.53,171.65");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=291.93,244.37");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=315.13,300.23");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=240.88,320.40");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=302.39,264.84");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=358.30,274.09");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=300.98,292.48");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=242.50,305.15");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=292.87,280.95");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=233.31,262.88");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=236.76,234.93");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=268.38,146.38");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=187.40,112.23");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=233.43,191.34");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=161.71,205.69");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=81.21,178.77");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=106.74,177.74");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=54.87,259.16");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=59.21,219.74");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=21.53,272.20");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=29.74,252.39");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=34.89,221.43");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=31.56,239.63");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=49.01,327.02");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=98.94,354.89");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=109.00,340.39");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=158.12,262.92");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=122.85,263.86");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=98.00,271.31");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=8.33,275.17");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=44.53,198.86");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=109.91,272.49");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=53.86,310.29");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=79.66,335.82");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=73.66,326.37");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=32.59,322.69");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=27.25,301.21");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=32.24,312.43");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=85.69,255.25");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=140.81,208.07");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=87.90,168.20");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=37.80,181.54");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=2.16,184.33");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=11.30,114.58");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=6.68,89.75");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=20.89,55.06");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=17.33,67.40");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=97.40,29.95");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=108.18,87.72");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=201.06,62.81");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=158.75,48.34");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=167.87,63.67");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=68.58,65.36");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=0.49,52.13");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=2.65,36.75");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=76.06,16.23");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=63.74,15.19");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=118.41,21.54");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=93.62,11.04");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=13.99,9.78");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=46.81,29.05");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=39.07,66.14");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=86.65,79.84");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=63.59,84.58");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=50.87,66.84");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=46.00,82.14");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=25.56,87.54");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=21.38,118.47");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=73.05,144.23");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=67.40,199.15");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=60.68,186.64");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=120.44,218.70");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=193.56,224.66");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=215.66,315.39");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=186.27,235.63");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=222.14,168.38");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=270.43,178.96");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=190.57,307.99");
    }

}

