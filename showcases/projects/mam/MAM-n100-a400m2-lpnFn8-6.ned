
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-6
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
        @display("p=399.00,333.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=375.63,339.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=375.71,311.15");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=330.72,278.67");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=352.82,304.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=327.10,349.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=346.02,355.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=398.19,305.57");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=382.93,299.60");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=366.14,396.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=275.53,363.41");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=282.72,348.09");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=252.23,350.09");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=381.85,320.19");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=360.61,355.55");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=331.63,397.03");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=338.67,268.93");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=323.41,368.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=290.10,334.19");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=296.59,345.51");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=350.30,273.49");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=364.52,296.77");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=376.54,365.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=222.26,349.92");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=329.73,313.86");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=306.36,372.71");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=386.06,345.03");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=362.60,366.13");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=362.97,275.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=255.64,290.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=390.43,359.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=312.87,339.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=345.58,380.48");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=393.91,288.31");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=308.45,293.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=361.01,385.93");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=217.50,365.37");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=299.66,362.04");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=234.70,374.72");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=387.49,247.91");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=344.16,368.30");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=381.51,375.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=311.78,278.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=392.72,324.60");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=349.13,336.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=359.08,316.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=378.92,265.00");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=320.68,262.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=393.65,369.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=261.15,386.05");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=281.85,320.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=239.23,330.64");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=357.82,341.89");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=372.27,351.71");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=390.85,267.79");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=372.29,279.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=360.42,227.65");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=258.02,333.50");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=341.20,389.93");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=323.00,289.53");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=351.65,323.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=309.25,399.73");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=243.20,369.26");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=283.84,387.45");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=223.37,282.42");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=397.82,348.17");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=340.03,314.72");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=324.21,252.71");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=242.64,320.57");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=344.99,215.72");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=293.13,392.21");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=311.91,355.32");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=305.85,315.43");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=356.73,257.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=371.63,385.66");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=213.85,294.86");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=333.24,380.82");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=304.89,270.66");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=333.25,361.54");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=336.73,336.19");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=319.05,311.69");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=336.90,207.47");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=305.93,238.44");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=309.62,388.60");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=390.00,399.13");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=355.15,285.99");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=295.46,287.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=386.41,388.53");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=217.82,389.96");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=214.65,320.50");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=194.11,397.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=370.87,250.27");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=355.93,245.48");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=361.81,328.40");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=242.24,272.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=295.30,273.54");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=257.78,306.59");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=314.25,328.53");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=384.00,279.77");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=288.69,312.84");
    }

}

