
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_5
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=22.57,887.90");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=81.33,867.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=124.14,877.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=173.95,819.40");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=233.40,827.43");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=333.03,828.82");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=269.74,797.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=303.09,795.45");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=111.83,959.67");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=34.04,881.32");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=52.05,860.33");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=161.51,886.77");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=199.26,853.68");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=291.52,814.19");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=352.10,768.34");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=247.49,802.49");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=383.80,850.22");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=68.36,876.27");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=75.69,966.38");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=10.09,836.14");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=110.52,915.95");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=189.55,811.51");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=200.79,748.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=319.44,812.38");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=293.45,800.16");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=325.31,853.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=188.60,870.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=105.04,931.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=92.77,830.08");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=57.44,835.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=107.24,843.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=248.59,826.98");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=314.91,829.01");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=228.79,796.12");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=309.70,748.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=136.92,908.98");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=1.92,899.74");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=88.16,898.13");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=90.03,943.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=198.15,891.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=210.50,813.81");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=291.72,842.10");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=268.19,758.24");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=311.32,819.59");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=127.04,902.04");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=37.44,897.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=116.74,854.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=93.26,959.88");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=222.13,840.39");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=182.91,910.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=281.34,837.94");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=335.24,728.24");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=400.61,815.63");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=135.29,924.32");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=51.77,847.53");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=58.60,870.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=180.84,799.07");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=244.63,855.61");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=208.15,825.57");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=326.92,838.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=264.83,853.77");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=309.08,877.67");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=168.34,859.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=73.92,947.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=101.29,807.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=164.33,934.41");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=183.53,839.03");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=147.31,811.43");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=354.70,806.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=284.21,874.61");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=273.67,827.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=91.93,921.01");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=50.06,885.55");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=68.63,844.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=71.21,896.22");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=173.78,808.50");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=221.21,782.89");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=369.05,759.28");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=285.07,778.82");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=295.86,751.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=72.87,820.87");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=46.68,963.81");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=90.62,878.57");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=140.09,858.35");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=177.88,829.58");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=223.00,881.92");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=288.64,859.52");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=280.48,799.39");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=298.92,765.37");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=140.77,823.88");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=68.16,913.58");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=62.48,852.43");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=118.95,972.06");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=165.66,752.56");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=267.30,771.06");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=281.46,745.05");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=248.92,814.94");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=334.95,762.29");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=98.06,910.64");
    }

}

