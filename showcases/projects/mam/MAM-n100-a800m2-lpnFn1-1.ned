
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn1-1
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
        @display("p=771.00,667.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=785.62,699.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=743.15,658.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=712.89,731.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=679.27,727.40");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=748.74,755.06");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=724.02,740.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=728.80,703.03");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=693.32,715.81");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=728.43,681.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=738.58,735.94");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=737.71,721.97");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=761.44,765.25");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=774.28,798.14");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=735.58,764.28");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=707.28,783.66");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=762.19,782.44");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=728.64,781.02");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=743.29,783.16");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=779.95,757.04");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=794.85,772.15");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=781.59,777.30");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=716.31,713.91");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=734.89,792.88");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=713.30,752.47");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=759.91,690.96");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=740.40,699.85");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=786.11,714.32");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=774.90,692.79");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=686.48,659.58");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=687.39,672.73");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=701.51,709.16");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=640.25,664.26");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=612.09,679.54");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=669.74,606.16");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=593.60,584.24");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=601.70,683.64");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=630.18,673.35");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=642.67,679.66");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=645.10,642.28");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=643.75,622.06");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=638.66,586.25");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=598.99,716.44");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=606.50,708.11");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=573.51,731.86");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=644.45,719.94");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=681.39,791.46");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=619.32,783.61");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=672.92,778.10");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=639.34,736.91");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=757.40,649.26");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=726.77,607.21");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=657.35,579.07");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=598.39,572.20");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=612.05,601.38");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=695.27,566.41");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=696.16,602.30");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=692.97,584.71");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=670.12,632.64");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=633.29,556.17");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=611.16,498.55");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=641.82,440.51");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=628.29,449.50");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=636.17,503.24");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=645.59,541.35");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=583.51,574.25");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=559.20,568.10");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=500.82,560.10");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=518.27,578.70");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=455.21,614.93");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=471.78,605.93");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=405.20,601.80");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=383.72,582.38");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=421.69,496.43");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=351.73,477.16");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=425.68,507.79");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=382.28,504.44");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=313.54,436.77");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=391.41,482.38");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=431.90,435.78");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=520.30,453.58");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=530.23,451.67");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=479.63,517.53");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=489.98,517.75");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=506.62,459.45");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=509.88,472.84");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=520.69,412.72");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=446.62,355.51");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=468.55,375.02");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=445.02,344.50");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=402.96,336.34");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=351.86,419.40");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=330.08,366.47");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=313.84,369.21");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=348.83,442.95");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=322.86,451.46");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=290.21,408.23");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=297.79,419.06");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=372.69,384.04");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=384.94,343.16");
    }

}

