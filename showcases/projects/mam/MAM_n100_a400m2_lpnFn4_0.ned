
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_0
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=28.06,66.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=0.27,29.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=19.56,49.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=63.53,37.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=110.89,81.93");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=181.81,101.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=152.41,12.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=135.82,21.23");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=125.12,26.47");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=163.66,5.25");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=135.29,114.14");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=231.50,117.50");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=237.86,188.29");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=187.30,151.69");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=209.38,146.02");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=138.04,175.95");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=185.03,198.76");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=208.76,207.35");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=223.23,210.05");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=262.39,182.74");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=325.84,106.09");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=343.04,24.77");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=377.25,80.75");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=379.31,63.67");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=85.70,129.68");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=46.68,50.53");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=17.88,110.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=18.11,129.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=96.85,70.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=108.24,124.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=236.96,66.27");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=78.04,1.03");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=132.94,56.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=131.98,36.45");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=210.30,3.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=103.71,112.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=170.61,124.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=159.85,222.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=173.89,113.35");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=217.74,159.20");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=96.24,179.98");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=200.53,167.32");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=218.51,223.25");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=245.69,222.45");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=206.55,159.15");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=325.87,178.45");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=301.44,17.98");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=398.58,176.61");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=391.18,30.14");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=82.93,76.78");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=53.31,102.42");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=13.11,5.82");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=22.09,25.55");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=120.32,48.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=111.86,104.09");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=182.18,78.31");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=222.82,38.10");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=161.62,29.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=191.32,89.71");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=202.60,28.66");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=188.20,113.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=281.68,172.65");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=219.10,181.23");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=116.90,113.45");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=250.99,157.28");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=145.54,232.12");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=158.16,244.07");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=284.50,233.71");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=317.68,188.53");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=249.37,241.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=271.14,61.08");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=327.65,120.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=355.35,20.81");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=291.75,66.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=140.70,100.62");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=11.43,38.64");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=6.27,63.60");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=101.57,43.42");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=119.95,86.99");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=160.57,67.42");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=188.62,25.02");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=165.83,18.97");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=92.09,54.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=116.68,20.85");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=214.74,25.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=77.41,112.22");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=302.92,86.90");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=297.14,147.48");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=152.97,165.12");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=187.57,162.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=229.07,140.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=174.75,146.49");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=229.69,228.62");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=269.70,281.11");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=246.58,209.62");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=381.60,186.76");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=312.38,2.39");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=326.18,70.79");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=363.16,4.47");
    }

}

