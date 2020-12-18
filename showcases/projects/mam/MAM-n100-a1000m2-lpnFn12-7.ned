
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-7
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
        @display("p=852.00,506.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=819.54,465.70");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=880.87,398.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=871.03,477.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=854.16,577.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=814.78,488.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=842.42,463.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=820.85,446.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=778.38,501.07");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=828.72,549.98");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=805.89,483.43");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=880.44,387.11");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=944.29,538.92");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=911.26,550.44");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=783.47,538.64");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=860.94,398.23");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=846.94,431.19");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=792.20,436.04");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=841.37,528.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=891.30,519.25");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=815.14,367.43");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=877.87,463.02");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=867.79,574.15");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=769.44,468.49");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=896.70,499.77");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=830.41,419.90");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=768.83,431.97");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=922.02,505.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=809.40,502.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=911.25,373.35");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=897.59,385.24");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=798.18,602.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=835.88,475.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=914.80,396.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=823.65,433.34");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=836.56,445.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=872.07,497.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=845.21,452.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=803.34,412.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=941.21,474.07");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=920.00,559.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=824.95,500.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=807.53,464.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=758.15,419.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=745.28,524.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=858.49,560.01");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=817.43,515.84");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=946.09,346.35");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=815.01,535.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=798.06,591.38");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=854.15,528.85");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=919.78,483.59");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=784.38,423.60");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=861.95,502.19");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=895.02,541.19");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=898.17,429.98");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=918.82,308.02");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=880.63,450.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=860.31,591.96");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=724.38,507.61");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=789.57,396.00");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=770.24,443.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=742.90,499.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=831.26,512.23");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=886.96,425.01");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=920.03,411.53");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=922.11,525.29");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=897.83,630.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=860.41,483.86");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=843.58,398.70");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=805.98,513.49");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=836.18,494.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=801.87,565.18");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=827.46,455.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=877.31,414.87");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=908.02,509.49");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=795.21,652.04");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=883.20,495.16");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=785.04,473.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=843.17,410.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=753.16,488.94");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=873.96,557.23");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=795.65,461.40");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=900.34,419.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=869.61,433.07");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=873.70,642.16");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=897.57,469.00");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=885.85,552.09");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=742.65,464.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=685.40,475.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=913.79,581.45");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=797.52,488.99");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=937.28,452.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=877.09,511.12");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=913.82,616.96");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=856.11,459.31");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=791.83,409.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=847.42,486.99");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=692.12,531.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=928.96,494.46");
    }

}

