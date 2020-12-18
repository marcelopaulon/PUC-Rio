
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-0
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
        @display("p=556.00,235.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=589.75,248.31");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=541.98,214.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=523.56,188.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=478.11,190.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=507.94,215.67");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=462.88,134.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=443.51,136.00");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=428.48,167.06");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=397.45,167.06");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=495.27,169.36");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=529.30,252.70");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=512.53,260.21");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=567.86,252.42");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=533.67,318.26");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=485.23,290.48");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=551.04,256.61");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=460.33,203.77");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=484.48,222.17");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=515.43,131.07");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=435.45,67.36");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=445.79,82.96");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=407.87,172.19");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=513.13,198.42");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=564.62,225.17");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=519.66,247.02");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=486.97,163.17");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=594.19,315.62");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=486.83,242.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=539.63,175.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=476.89,213.45");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=497.66,234.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=508.95,64.05");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=481.66,111.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=443.75,190.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=452.18,145.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=530.14,126.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=511.35,182.58");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=489.65,186.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=550.00,275.23");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=651.46,285.70");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=556.61,206.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=449.81,199.45");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=450.78,160.61");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=512.60,169.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=476.54,145.75");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=413.39,88.87");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=426.47,203.50");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=416.63,112.30");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=536.20,204.69");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=530.14,264.12");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=510.18,324.95");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=526.10,295.55");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=561.65,320.75");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=616.91,189.79");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=590.55,228.66");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=477.63,94.70");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=423.03,263.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=478.13,131.61");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=435.10,111.44");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=392.37,154.22");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=427.99,128.81");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=535.50,109.07");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=593.59,261.24");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=493.40,276.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=634.06,200.79");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=588.89,164.57");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=616.25,269.56");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=506.38,280.47");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=505.71,141.94");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=496.75,131.88");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=397.11,109.39");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=378.93,194.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=413.32,145.17");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=345.38,137.45");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=434.77,243.82");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=596.13,292.92");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=576.95,242.13");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=524.62,152.26");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=608.11,325.06");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=503.06,201.13");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=529.84,232.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=518.03,118.35");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=408.42,215.77");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=483.21,70.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=469.95,156.93");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=411.33,263.99");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=392.76,191.51");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=580.96,187.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=464.30,298.88");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=473.83,290.68");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=501.28,188.10");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=501.60,290.94");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=543.45,195.65");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=501.32,270.18");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=434.07,196.76");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=517.95,283.63");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=456.17,183.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=472.77,42.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=467.25,105.44");
    }

}

