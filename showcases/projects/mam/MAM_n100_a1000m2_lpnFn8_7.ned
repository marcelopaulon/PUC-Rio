
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_7
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=79.83,859.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=51.69,778.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=55.39,757.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=96.61,745.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=145.59,790.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=150.45,753.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=82.28,787.81");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=138.55,780.84");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=133.07,831.39");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=160.14,834.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=183.37,812.05");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=186.40,857.96");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=132.19,905.04");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=139.11,895.26");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=8.73,736.75");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=53.00,730.28");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=58.21,676.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=162.79,794.03");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=186.37,763.14");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,810.05");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=138.11,810.35");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=63.68,851.70");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=174.87,884.57");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=213.00,819.15");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=183.14,895.17");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=178.59,846.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=120.53,872.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=5.83,697.66");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=104.56,799.33");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=118.94,779.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=112.93,848.55");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=195.73,687.54");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=124.82,846.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=99.30,861.97");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=199.02,824.06");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=234.30,802.33");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=165.73,815.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=187.92,906.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=108.79,931.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=6.40,924.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=84.50,836.34");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=75.56,738.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=117.70,752.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=150.98,777.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=140.57,750.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=85.88,695.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=175.97,748.10");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=103.15,884.30");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=115.70,892.14");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=228.87,826.78");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=194.79,868.90");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=92.75,921.76");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=1.73,894.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=37.92,798.69");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=39.68,705.20");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=50.01,820.45");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=133.94,794.70");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=80.86,798.43");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=68.14,776.85");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=161.98,768.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=103.23,822.04");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=173.35,855.57");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=217.66,846.86");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=248.03,930.82");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=195.28,924.55");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=68.83,819.74");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=31.54,822.86");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=57.81,717.89");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=134.63,695.39");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=223.07,751.14");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=204.04,768.42");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=148.64,820.88");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=102.84,834.92");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=208.67,864.07");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=134.96,761.57");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=143.28,837.03");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=197.01,809.01");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=83.39,908.26");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=117.95,838.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=70.15,766.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=29.73,739.85");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=37.77,759.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=131.37,821.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=149.98,715.52");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=35.87,722.33");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=118.01,821.29");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=150.38,854.63");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=200.64,841.07");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=163.52,779.37");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=243.50,874.02");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=131.64,879.58");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=5.01,813.93");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=24.07,838.31");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=67.72,794.59");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=21.77,725.71");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=137.72,864.01");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=172.73,804.82");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=104.17,724.62");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=154.53,740.41");
    }

}

