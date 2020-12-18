
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_4
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=85.21,339.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=126.70,358.06");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=152.10,359.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=73.65,398.61");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=121.04,372.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=115.71,294.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=78.39,278.57");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=24.43,250.20");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=16.64,260.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=27.84,178.19");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=83.61,225.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=66.24,251.70");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=6.27,181.35");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=75.51,141.11");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=82.49,124.50");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=88.58,110.42");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=117.14,59.58");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=64.35,70.94");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=107.97,77.71");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=77.04,57.63");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=32.94,34.81");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=18.54,58.24");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=14.49,44.89");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=53.63,40.65");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=49.39,276.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=144.66,351.34");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=114.01,336.27");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=82.74,368.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=93.83,399.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=175.96,299.81");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=120.96,319.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=99.23,315.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=89.10,257.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=16.36,314.27");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=114.63,157.62");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=61.84,308.83");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=103.70,237.85");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=8.22,206.15");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=35.76,146.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=89.37,83.44");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=99.69,105.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=55.47,4.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=62.46,57.36");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=148.73,163.56");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=32.73,90.89");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=21.60,86.51");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=8.68,77.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=32.15,48.70");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=36.07,6.40");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=133.23,333.45");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=91.62,322.93");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=89.57,274.71");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=153.82,300.73");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=108.88,326.14");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=95.99,360.95");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=148.33,245.57");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=62.28,343.43");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=38.21,254.52");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=70.17,262.76");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=8.89,101.61");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=109.13,226.19");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=138.80,190.12");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=29.28,164.65");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=74.42,220.58");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=107.11,125.88");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=132.18,129.56");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=156.89,6.80");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=63.85,92.64");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=125.48,21.09");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=78.62,89.89");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=21.71,34.05");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=15.99,20.18");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=0.81,33.11");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=138.34,18.38");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=132.63,272.91");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=104.81,349.45");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=93.95,377.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=110.11,386.43");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=25.81,386.92");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=114.89,355.87");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=208.01,280.87");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=115.15,269.44");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=66.14,196.17");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=91.57,234.10");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=78.07,111.87");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=100.52,161.79");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=54.57,319.29");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=4.93,155.56");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=27.92,204.99");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=149.65,84.83");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=156.01,68.94");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=133.35,1.27");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=46.18,132.06");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=191.75,64.09");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=129.42,47.82");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=80.32,27.42");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=42.94,19.95");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=30.78,63.26");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=4.70,11.82");
    }

}

