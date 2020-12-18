
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_4
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
        @display("p=82.50,877.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=97.82,820.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=106.20,803.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=102.68,757.24");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=144.92,701.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=187.28,707.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=236.09,661.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=228.99,700.06");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=53.89,967.71");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=78.78,887.71");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=142.89,813.86");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=133.18,732.32");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=124.37,795.17");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=151.85,790.17");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=237.88,726.86");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=284.18,701.75");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=167.89,649.54");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=129.41,822.93");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=14.43,934.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=154.75,869.54");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=126.47,889.97");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=50.32,784.31");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=195.84,744.81");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=204.60,732.79");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=274.09,578.13");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=148.41,736.58");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=70.86,921.30");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=97.10,840.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=85.24,813.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=80.78,789.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=91.22,753.84");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=164.51,757.08");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=183.19,692.69");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=267.79,664.65");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=308.74,702.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=82.39,849.43");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=90.43,860.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=18.58,767.84");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=42.21,876.94");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=138.17,837.83");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=227.08,668.65");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=276.60,680.12");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=240.65,601.79");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=291.54,657.56");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=143.54,828.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=118.89,874.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=116.42,808.04");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=148.05,890.02");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=118.98,688.32");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=114.69,623.55");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=97.08,677.87");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=305.31,631.32");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=263.04,624.40");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=95.95,929.76");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=24.89,845.02");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=129.51,749.02");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=89.96,832.49");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=13.87,726.76");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=148.66,768.47");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=255.18,687.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=253.88,726.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=254.23,751.66");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=177.21,913.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=3.65,832.64");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=166.22,883.17");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=135.81,789.54");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=121.54,785.35");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=60.05,670.12");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=177.36,726.68");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=273.13,705.61");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=319.20,712.39");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=117.77,948.22");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=40.30,841.18");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=154.28,806.76");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=39.22,808.45");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=88.85,798.18");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=187.24,667.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=161.72,680.64");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=184.51,657.46");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=244.29,649.38");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=166.64,904.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=41.89,924.33");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=174.96,842.27");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=59.60,862.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=3.74,744.70");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=83.08,629.94");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=178.48,755.51");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=196.03,681.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=268.58,696.43");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=49.05,981.87");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=134.57,899.18");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=67.07,799.95");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=145.45,850.23");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=86.84,736.96");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=103.15,710.37");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=118.23,737.49");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=216.63,706.18");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=244.19,778.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=52.51,913.72");
    }

}

