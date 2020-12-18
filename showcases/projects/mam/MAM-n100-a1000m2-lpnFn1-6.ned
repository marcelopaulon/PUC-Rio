
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn1-6
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
        @display("p=484.00,683.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=526.60,712.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=519.30,753.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=510.94,766.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=488.94,695.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=476.60,780.45");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=506.76,823.64");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=476.47,735.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=480.65,833.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=446.80,830.01");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=444.27,863.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=387.64,822.07");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=421.63,838.03");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=420.18,901.04");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=451.74,888.86");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=467.16,813.44");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=479.79,892.80");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=552.89,858.83");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=541.52,856.90");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=552.00,949.50");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=508.98,978.53");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=591.67,966.13");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=576.69,948.31");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=618.81,986.06");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=614.69,953.14");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=585.57,929.80");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=555.68,874.21");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=613.06,833.00");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=626.39,786.57");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=608.05,753.98");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=560.09,741.52");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=608.73,813.43");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=625.83,877.39");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=608.00,863.95");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=622.63,929.65");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=542.72,920.58");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=458.96,917.09");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=483.14,946.56");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=463.65,864.14");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=480.85,809.04");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=449.76,792.51");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=415.66,813.76");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=407.92,823.63");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=442.05,746.21");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=441.22,759.97");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=366.71,710.65");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=368.61,723.69");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=348.35,707.87");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=409.71,640.17");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=431.75,643.43");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=471.39,706.70");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=516.97,738.35");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=547.98,771.37");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=539.22,787.54");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=558.93,817.45");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=575.50,852.13");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=582.40,873.95");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=537.58,879.44");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=517.94,875.59");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=418.50,874.61");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=420.44,916.80");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=530.16,940.41");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=495.69,979.47");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=512.90,963.23");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=535.83,950.47");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=560.79,969.98");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=522.51,931.90");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=616.10,938.96");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=596.21,944.74");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=584.36,958.65");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=565.77,955.17");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=549.65,802.75");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=515.51,796.60");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=539.75,827.92");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=542.19,732.98");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=494.56,671.33");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=422.12,702.78");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=368.17,659.16");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=354.46,589.42");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=349.79,619.89");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=288.78,643.71");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=285.68,555.64");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=361.76,577.32");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=346.11,566.57");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=433.66,609.36");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=454.16,623.67");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=380.41,558.35");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=341.50,487.42");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=367.07,478.38");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=348.37,521.82");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=381.58,529.57");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=405.21,485.99");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=388.25,495.04");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=380.89,514.16");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=423.80,579.69");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=464.39,521.17");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=523.86,529.32");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=556.37,594.22");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=613.48,552.01");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=633.15,522.02");
    }

}

