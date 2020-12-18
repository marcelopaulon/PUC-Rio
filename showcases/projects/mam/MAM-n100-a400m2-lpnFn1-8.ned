
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn1-8
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
        @display("p=130.00,258.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=153.22,218.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=101.24,202.84");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=101.98,189.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=117.17,216.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=55.51,193.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=2.35,242.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=31.31,272.56");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=91.49,258.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=90.75,167.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=60.25,262.14");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=141.74,279.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=200.93,269.47");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=194.51,285.24");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=190.44,296.85");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=249.00,250.02");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=279.37,254.30");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=209.89,214.53");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=231.40,311.67");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=237.93,287.87");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=249.55,263.21");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=243.04,321.31");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=330.15,356.52");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=386.05,360.58");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=332.96,396.94");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=341.47,385.22");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=265.32,338.03");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=219.14,254.00");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=282.46,286.12");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=219.20,337.01");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=210.27,353.27");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=155.79,288.96");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=179.50,381.29");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=244.10,378.28");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=205.93,381.67");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=251.97,328.42");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=277.82,364.66");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=303.32,352.95");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=283.96,336.14");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=285.87,353.63");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=274.28,300.01");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=352.34,299.77");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=368.73,233.25");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=367.76,246.64");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=355.46,150.75");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=329.29,230.77");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=346.34,195.72");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=306.74,240.48");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=356.48,318.55");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=301.15,284.66");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=314.09,301.69");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=303.43,271.34");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=272.38,282.26");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=310.07,331.01");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=307.21,255.40");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=369.66,185.52");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=344.67,248.73");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=282.39,230.28");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=275.65,174.10");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=288.16,179.95");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=290.07,199.84");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=273.77,207.91");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=226.98,238.26");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=108.91,231.77");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=127.58,151.71");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=193.16,188.21");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=212.91,167.41");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=247.94,150.58");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=252.27,96.74");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=269.31,134.74");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=290.77,48.69");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=331.36,39.97");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=348.03,56.36");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=351.93,31.07");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=262.37,61.20");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=204.07,124.45");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=244.53,56.91");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=290.60,17.76");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=299.83,37.88");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=376.22,71.84");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=367.19,64.71");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=365.47,75.03");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=344.78,105.57");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=348.03,120.71");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=375.49,145.85");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=395.33,180.54");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=398.90,195.61");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=389.94,168.81");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=360.96,130.62");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=354.11,220.45");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=292.94,210.54");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=236.46,154.81");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=261.09,126.41");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=237.55,173.27");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=298.41,170.19");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=320.27,110.20");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=372.27,44.08");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=380.90,27.95");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=369.46,26.72");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=358.66,4.03");
    }

}

