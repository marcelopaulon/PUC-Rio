
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_3
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=68.63,338.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=129.31,340.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=133.55,299.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=130.36,283.60");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=156.22,316.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=237.19,289.97");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=273.06,347.30");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=240.47,350.23");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=217.91,363.33");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=177.36,360.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=199.19,371.08");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=230.37,325.65");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=235.68,390.87");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=194.10,316.41");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=208.47,312.28");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=250.18,245.37");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=199.23,230.08");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=243.67,316.74");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=257.77,258.04");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=324.86,254.99");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=340.74,164.47");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=372.62,176.40");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=315.18,335.71");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=334.31,310.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=153.38,339.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=57.01,398.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=99.10,321.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=163.57,232.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=119.33,239.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=175.99,305.19");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=273.34,306.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=245.65,370.77");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=277.13,390.77");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=225.66,377.47");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=213.45,352.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=199.90,355.01");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=205.95,335.79");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=264.11,327.21");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=183.20,322.61");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=274.44,277.68");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=223.39,333.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=155.76,283.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=286.32,318.13");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=292.17,288.71");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=288.55,274.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=336.87,123.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=361.83,220.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=353.25,252.00");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=333.84,368.50");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=142.76,352.55");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=61.89,356.63");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=123.16,397.47");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=153.08,356.00");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=147.97,306.22");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=178.73,291.58");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=238.04,252.76");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=262.65,390.61");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=181.80,271.49");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=202.11,326.18");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=159.37,305.80");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=118.57,337.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=253.13,394.36");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=176.70,350.42");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=200.86,251.50");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=189.95,338.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=217.61,265.38");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=177.20,187.78");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=270.49,364.09");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=237.30,274.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=286.83,299.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=299.00,129.78");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=326.00,111.88");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=326.04,337.83");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=292.91,361.45");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=109.32,356.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=82.39,355.44");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=147.82,391.94");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=126.32,206.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=177.65,262.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=161.31,325.67");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=327.81,323.24");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=322.20,397.02");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=254.43,357.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=288.02,390.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=189.20,397.34");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=172.51,275.35");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=279.06,332.31");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=209.48,371.52");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=142.65,316.88");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=110.53,301.02");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=274.91,262.00");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=201.74,266.17");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=323.01,268.97");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=246.40,199.34");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=316.12,176.35");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=392.39,203.44");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=301.37,210.06");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=240.73,329.42");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=397.02,355.81");
    }

}

