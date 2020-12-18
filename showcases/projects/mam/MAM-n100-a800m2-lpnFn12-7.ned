
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-7
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
        @display("p=549.00,397.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=605.80,358.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=564.84,315.07");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=527.39,281.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=488.60,305.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=536.51,311.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=554.52,381.17");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=579.25,366.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=599.34,385.99");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=545.37,337.15");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=587.83,425.69");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=564.77,333.28");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=522.96,304.09");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=506.94,299.22");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=508.01,282.67");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=603.33,402.60");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=670.03,364.69");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=598.66,484.31");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=646.40,408.67");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=594.69,286.42");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=577.46,217.72");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=546.09,248.34");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=427.61,249.50");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=475.85,263.20");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=531.20,421.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=559.43,359.76");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=662.79,319.11");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=499.40,413.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=653.50,287.43");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=619.06,237.52");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=558.92,252.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=449.31,283.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=488.27,280.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=478.80,410.31");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=545.88,410.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=624.61,345.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=526.37,405.44");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=633.77,362.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=554.58,313.19");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=591.13,316.57");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=579.24,336.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=560.53,398.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=594.79,346.59");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=557.62,344.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=592.77,405.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=547.67,462.16");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=556.34,439.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=624.37,253.15");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=467.40,237.25");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=449.37,341.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=599.25,263.82");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=521.01,356.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=615.23,428.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=566.05,384.86");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=507.68,374.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=577.26,438.18");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=520.81,250.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=537.27,368.60");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=411.81,245.46");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=439.48,314.88");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=516.57,421.29");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=617.19,322.98");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=599.59,448.98");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=527.78,435.11");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=648.35,341.67");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=597.25,304.03");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=525.80,262.53");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=515.91,289.03");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=553.84,280.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=456.07,371.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=579.35,388.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=580.63,464.37");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=608.73,444.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=608.48,340.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=626.62,375.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=585.13,201.98");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=478.50,305.81");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=589.73,328.28");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=618.92,397.57");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=593.14,377.96");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=657.80,365.11");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=522.37,373.34");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=653.80,380.04");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=586.66,262.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=534.72,287.96");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=472.89,322.07");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=551.43,325.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=608.46,316.47");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=572.24,413.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=626.96,389.72");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=561.73,409.33");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=693.33,391.82");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=528.41,346.35");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=541.51,264.73");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=485.07,293.48");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=584.86,283.59");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=576.12,356.50");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=516.24,438.17");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=505.60,387.89");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=470.27,420.84");
    }

}

