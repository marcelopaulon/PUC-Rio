
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_4
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
        @display("p=67.44,909.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=31.19,867.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=26.63,850.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=94.62,845.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=60.79,858.08");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=142.73,866.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=202.92,857.43");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=227.70,787.20");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=23.85,896.38");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=53.00,839.79");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=7.61,880.39");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=1.38,800.72");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=127.80,872.27");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=71.38,854.75");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=169.55,917.59");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=211.74,849.08");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=152.97,792.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=134.88,895.00");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=46.93,853.84");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=33.37,936.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=101.58,856.98");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=93.60,939.12");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=69.12,842.02");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=203.52,883.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=193.01,869.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=263.63,780.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=138.19,970.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=135.94,947.23");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=20.50,880.78");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=20.88,814.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=55.26,768.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=71.01,805.37");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=75.55,870.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=182.12,792.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=308.79,776.00");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=131.40,817.32");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=10.65,913.17");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=25.74,836.91");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=42.87,888.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=35.26,768.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=65.01,892.21");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=129.80,831.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=146.41,801.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=213.84,771.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=53.16,935.36");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=157.52,892.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=20.95,868.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=38.16,841.10");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=100.84,874.42");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=85.27,793.52");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=209.21,838.52");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=215.17,859.41");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=259.42,853.85");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=48.30,905.88");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=62.84,923.90");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=7.28,840.61");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=82.31,856.98");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=101.96,813.07");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,862.20");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=123.37,850.18");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=260.37,900.52");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=157.46,755.80");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=95.78,925.28");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=30.76,982.16");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=4.41,812.69");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=11.21,861.46");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=133.19,785.38");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=155.75,866.61");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=89.23,892.28");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=190.39,817.70");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=232.16,755.53");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=155.16,949.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=137.33,908.46");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=26.45,925.38");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=41.32,786.84");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=91.55,829.24");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=9.48,899.78");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=107.17,950.29");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=181.99,915.47");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=257.99,739.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=45.62,928.04");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=43.91,970.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=34.12,808.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=29.83,785.76");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=117.23,839.62");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=83.33,914.07");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=227.58,873.65");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=127.31,887.41");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=226.49,797.22");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=106.10,931.91");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=1.20,958.78");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=11.74,950.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=46.81,867.66");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=80.63,813.76");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=75.76,895.63");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=168.81,797.30");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=236.89,852.71");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=252.52,712.50");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=86.89,904.53");
    }

}

