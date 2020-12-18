
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-2
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
        @display("p=230.00,23.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=237.66,82.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=214.94,133.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=159.49,157.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=197.18,129.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=279.97,138.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=206.99,87.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=202.42,31.81");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=149.79,94.99");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=187.02,68.79");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=278.12,29.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=357.89,58.94");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=392.00,122.81");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=457.20,109.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=404.02,164.57");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=426.53,225.51");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=499.08,219.79");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=547.09,272.42");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=553.91,327.85");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=482.94,320.52");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=532.88,299.92");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=456.72,237.63");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=449.74,286.19");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=472.79,354.27");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=469.63,412.30");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=309.63,31.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=206.21,109.75");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=211.05,143.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=234.03,222.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=225.03,143.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=254.95,200.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=185.29,171.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=224.01,38.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=55.76,86.08");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=184.34,55.83");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=214.44,60.37");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=328.30,47.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=387.24,66.33");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=440.53,153.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=384.16,130.09");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=441.22,233.52");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=450.91,142.19");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=489.60,283.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=544.70,307.36");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=541.33,255.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=556.76,317.07");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=455.63,223.89");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=357.50,314.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=524.91,325.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=538.35,471.17");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=297.07,41.66");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=270.11,10.17");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=163.29,176.84");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=221.15,181.28");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=188.92,217.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=283.76,124.63");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=225.21,52.54");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=249.94,25.71");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=129.45,142.96");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=234.11,58.02");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=295.82,64.85");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=429.18,98.60");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=393.78,141.44");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=466.00,96.86");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=380.38,186.67");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=471.02,201.50");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=568.37,291.51");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=566.88,257.11");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=581.78,297.91");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=422.43,273.76");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=594.97,249.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=472.01,221.89");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=472.72,280.23");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=435.30,320.29");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=457.61,381.25");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=262.07,27.13");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=219.71,102.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=241.84,179.60");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=182.68,78.21");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=123.38,64.44");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=260.92,142.38");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=224.75,6.10");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=133.32,9.97");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=165.51,100.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=134.76,81.87");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=245.57,52.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=338.99,16.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=361.93,161.41");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=394.11,53.81");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=432.06,111.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=409.85,224.83");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=489.26,243.04");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=515.49,217.30");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=536.02,394.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=533.18,332.96");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=491.87,331.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=459.10,327.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=368.49,230.79");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=433.73,398.40");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=448.27,417.93");
    }

}

