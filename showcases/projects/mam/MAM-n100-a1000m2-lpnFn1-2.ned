
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn1-2
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
        @display("p=953.00,13.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=968.54,68.84");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=967.31,90.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=968.66,147.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=942.99,182.71");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=957.95,189.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=964.19,285.60");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=884.01,277.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=854.31,350.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=901.91,414.10");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=901.67,429.55");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=944.13,481.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=883.44,415.76");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=912.51,439.42");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=895.00,446.71");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=943.88,443.74");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=964.26,458.97");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=990.59,388.81");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=965.64,337.91");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=991.10,303.67");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=988.71,258.79");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=897.97,266.93");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=937.26,289.72");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=976.05,270.39");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=911.63,340.47");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=820.29,325.92");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=798.67,317.89");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=753.62,233.90");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=751.01,216.94");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=714.16,304.15");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=729.31,241.86");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=686.04,245.74");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=691.37,227.65");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=679.91,224.14");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=688.33,286.42");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=733.42,221.17");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=694.71,261.51");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=643.42,234.34");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=673.69,145.92");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=654.55,167.62");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=589.61,213.23");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=621.39,161.61");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=623.56,201.28");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=638.30,212.39");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=596.22,141.44");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=662.05,191.05");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=653.20,72.36");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=668.20,88.80");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=737.12,24.37");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=725.56,34.95");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=647.56,15.66");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=660.64,48.43");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=647.29,33.92");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=640.68,49.97");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=621.80,48.84");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=643.79,68.57");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=704.65,32.27");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=683.96,62.65");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=699.78,96.91");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=744.94,60.19");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=685.89,25.69");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=750.51,71.07");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=685.14,143.49");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=670.84,206.54");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=725.02,251.06");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=707.84,328.91");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=616.14,325.34");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=611.61,255.97");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=540.06,223.63");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=536.66,205.00");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=494.53,146.93");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=519.51,199.34");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=451.17,160.93");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=441.49,234.26");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=476.85,263.96");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=463.89,263.04");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=415.99,268.56");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=382.14,350.45");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=378.00,318.36");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=423.01,231.04");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=464.70,229.91");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=380.55,210.37");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=397.75,206.33");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=396.01,216.88");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=363.40,198.06");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=402.65,176.85");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=363.15,216.29");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=267.19,235.45");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=220.88,264.00");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=291.44,312.27");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=237.99,303.84");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=214.18,348.83");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=176.88,360.76");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=210.68,361.87");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=220.38,376.60");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=257.72,419.31");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=224.89,409.66");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=219.50,334.73");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=240.90,319.01");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=279.00,348.84");
    }

}

