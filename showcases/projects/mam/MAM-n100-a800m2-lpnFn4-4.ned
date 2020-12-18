
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-4
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
        @display("p=501.00,421.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=523.83,400.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=599.10,435.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=603.00,499.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=653.36,557.06");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=638.22,550.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=703.50,594.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=791.33,554.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=756.41,560.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=739.82,569.24");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=724.90,553.87");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=703.54,574.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=729.45,665.40");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=714.50,702.84");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=736.54,792.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=766.87,798.88");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=790.02,747.59");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=760.86,763.09");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=722.69,785.34");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=795.73,770.57");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=727.43,734.65");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=708.56,712.48");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=686.46,719.23");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=664.87,648.62");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=645.41,614.91");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=559.84,483.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=604.06,371.15");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=589.10,422.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=593.07,468.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=650.91,569.10");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=616.62,513.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=779.87,574.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=783.04,525.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=710.20,604.81");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=705.57,528.77");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=714.18,649.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=708.72,475.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=673.58,703.99");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=725.94,709.83");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=708.61,784.63");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=785.55,771.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=737.90,738.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=676.74,796.31");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=783.69,787.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=750.07,700.32");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=706.71,731.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=765.95,679.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=669.81,775.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=653.87,656.05");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=623.28,599.38");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=564.56,495.46");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=448.89,439.46");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=583.20,479.98");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=558.48,508.23");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=583.31,621.90");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=635.19,500.23");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=683.29,607.33");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=771.63,615.99");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=746.10,609.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=760.46,583.17");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=670.07,476.03");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=649.17,633.10");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=721.42,635.47");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=779.23,694.10");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=690.24,738.52");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=799.39,735.65");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=729.26,757.28");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=672.62,749.79");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=719.52,774.53");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=795.90,782.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=740.92,755.14");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=700.86,702.47");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=751.53,674.47");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=709.38,682.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=672.59,676.31");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=506.11,406.13");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=590.66,391.02");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=632.30,405.80");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=597.03,408.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=628.12,541.69");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=693.87,515.35");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=666.38,586.71");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=715.29,490.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=769.19,569.86");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=724.22,570.41");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=787.84,614.99");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=713.23,559.60");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=748.61,581.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=685.00,640.73");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=728.77,723.81");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=793.90,794.50");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=749.15,662.40");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=748.85,791.93");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=708.51,752.28");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=766.10,746.45");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=684.04,755.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=700.06,745.44");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=720.94,672.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=659.06,618.29");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=647.69,645.86");
    }

}

