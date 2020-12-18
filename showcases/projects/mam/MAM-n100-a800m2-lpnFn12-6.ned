
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-6
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
        @display("p=290.00,57.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=237.29,66.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=244.18,90.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=298.14,25.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=199.42,33.56");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=321.12,112.72");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=333.59,194.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=386.13,171.60");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=397.98,172.95");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=379.20,54.40");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=291.99,146.66");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=218.32,124.83");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=319.96,60.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=173.11,121.40");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=339.32,18.67");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=352.02,157.88");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=381.21,159.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=408.01,259.48");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=311.24,108.98");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=226.85,97.69");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=245.81,131.89");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=307.89,16.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=194.62,49.27");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=318.95,88.82");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=374.22,176.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=409.88,205.78");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=376.38,219.17");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=299.93,74.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=213.03,62.46");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=284.34,68.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=364.14,97.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=224.53,57.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=371.89,46.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=346.30,247.44");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=389.74,215.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=420.39,192.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=348.27,56.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=228.26,15.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=263.72,44.00");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=369.84,24.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=150.53,65.09");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=337.70,53.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=258.77,196.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=398.35,162.61");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=406.81,134.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=293.62,34.88");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=246.55,42.44");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=180.83,33.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=307.75,30.59");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=134.19,90.86");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=351.95,80.00");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=329.78,243.69");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=364.59,121.16");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=307.82,174.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=249.60,121.58");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=224.45,0.35");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=204.92,173.20");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=293.46,44.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=196.48,21.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=326.43,47.57");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=323.41,203.53");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=388.40,140.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=485.98,143.80");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=311.74,45.56");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=288.79,4.01");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=224.51,154.71");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=318.66,13.31");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=245.40,20.91");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=359.24,183.75");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=432.85,187.74");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=392.01,233.72");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=302.17,164.27");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=332.27,111.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=153.45,102.00");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=205.68,148.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=354.27,40.11");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=179.41,88.39");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=269.60,133.38");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=370.05,230.86");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=313.42,222.75");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=307.03,140.11");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=227.94,71.77");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=285.73,95.83");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=251.77,53.83");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=270.06,66.22");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=140.03,14.46");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=328.59,78.20");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=369.44,202.34");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=427.62,145.36");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=454.74,208.03");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=206.27,4.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=198.55,122.17");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=217.32,87.52");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=258.24,22.58");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=170.72,17.87");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=272.05,111.77");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=330.53,227.47");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=352.99,238.17");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=401.69,190.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=260.68,75.80");
    }

}

