
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_7
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
        @display("p=70.94,945.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=135.72,961.52");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=153.80,949.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=152.55,967.21");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=231.66,942.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=272.91,947.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=261.94,947.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=208.99,926.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=258.39,957.88");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=342.56,952.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=344.87,869.03");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=340.44,888.13");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=356.00,872.50");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=442.98,845.94");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=393.74,872.36");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=401.56,948.15");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=381.43,880.76");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=412.45,862.51");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=457.48,876.52");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=446.42,886.07");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=467.07,843.07");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=422.87,812.54");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=327.31,846.94");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=333.32,874.93");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=35.12,911.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=85.02,965.93");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=131.45,901.66");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=165.69,921.70");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=142.58,916.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=165.39,944.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=301.00,880.52");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=298.09,920.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=143.32,860.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=240.19,911.04");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=289.97,963.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=309.97,892.71");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=384.48,822.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=393.05,847.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=482.81,792.78");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=374.58,893.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=441.34,969.13");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=372.58,861.25");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=412.15,817.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=529.05,935.15");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=514.52,941.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=441.61,818.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=434.32,802.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=352.55,828.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=316.85,793.14");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=94.64,950.67");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=124.04,970.64");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=88.39,933.67");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=234.23,991.62");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=180.42,919.30");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=232.04,964.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=291.59,938.87");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=247.15,968.77");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=272.99,883.51");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=318.56,994.75");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=341.41,989.95");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=350.52,880.97");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=420.10,927.32");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=380.34,921.89");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=363.12,895.27");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=345.75,837.10");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=452.93,973.86");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=421.15,836.65");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=434.16,919.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=430.76,881.18");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=503.54,831.07");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=393.51,861.40");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=466.31,818.00");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=314.54,903.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=356.65,808.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=86.77,892.56");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=67.38,868.03");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=67.56,916.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=129.30,941.91");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=179.40,995.88");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=246.60,921.85");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=326.06,941.05");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=277.39,982.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=216.18,858.09");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=270.46,932.77");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=255.62,914.25");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=334.56,827.75");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=341.25,925.72");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=264.97,860.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=482.67,845.48");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=370.72,799.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=405.44,904.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=420.15,881.10");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=387.88,834.24");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=414.88,913.38");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=400.54,885.17");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=436.09,864.16");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=460.38,858.77");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=332.93,801.93");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=317.45,883.36");
    }

}

