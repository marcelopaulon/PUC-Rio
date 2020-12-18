
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-6
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
        @display("p=731.00,251.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=712.75,232.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=758.13,287.80");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=776.14,355.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=852.86,383.21");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=836.22,413.73");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=829.26,489.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=818.10,484.47");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=855.08,451.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=767.83,438.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=717.14,457.57");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=779.57,433.71");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=792.47,455.12");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=706.79,269.58");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=709.31,306.81");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=769.33,287.81");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=701.89,415.38");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=872.31,438.04");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=923.85,374.64");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=852.11,520.36");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=817.04,494.97");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=841.46,430.34");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=766.75,511.94");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=746.53,492.59");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=699.38,382.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=791.84,516.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=737.38,222.29");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=706.29,245.65");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=777.44,270.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=770.44,324.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=841.41,361.07");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=815.37,403.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=752.47,548.58");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=791.21,481.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=840.78,478.00");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=830.70,439.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=705.67,464.03");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=763.03,458.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=779.12,415.19");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=709.20,292.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=673.54,310.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=748.56,259.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=863.20,348.33");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=867.40,414.59");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=845.43,391.30");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=875.01,491.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=857.64,473.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=942.93,460.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=803.30,432.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=742.27,470.21");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=780.67,506.38");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=800.42,504.56");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=766.27,307.36");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=750.50,184.47");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=832.12,318.98");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=748.93,323.04");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=910.37,432.18");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=899.30,377.85");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=863.68,460.15");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=790.01,576.78");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=845.05,502.96");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=780.08,450.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=720.48,446.70");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=817.48,416.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=874.99,470.09");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=740.06,283.13");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=737.86,205.10");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=793.69,328.14");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=748.71,357.05");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=818.11,326.43");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=828.81,403.79");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=868.27,448.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=818.28,528.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=854.92,437.86");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=808.10,488.84");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=730.29,473.66");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=754.28,345.65");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=806.24,422.73");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=727.66,263.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=690.67,224.73");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=759.57,268.06");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=793.57,340.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=879.19,396.70");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=799.92,403.69");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=838.65,552.19");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=858.20,530.67");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=917.92,445.39");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=745.55,460.41");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=745.80,366.67");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=691.18,470.70");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=758.01,416.77");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=646.17,262.39");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=799.60,238.03");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=727.83,296.62");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=694.29,401.04");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=842.68,342.81");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=828.26,380.47");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=868.17,397.00");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=801.05,461.13");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=827.06,498.88");
    }

}

