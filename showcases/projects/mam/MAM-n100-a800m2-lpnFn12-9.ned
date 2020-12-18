
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-9
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
        @display("p=145.00,289.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=137.18,328.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=215.55,295.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=226.12,299.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=237.14,297.04");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=237.84,309.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=207.43,343.64");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=251.94,315.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=191.32,259.34");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=155.25,225.69");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=207.67,328.77");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=227.22,367.29");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=208.38,285.74");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=225.09,256.56");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=253.29,396.69");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=159.78,361.80");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=225.50,349.23");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=233.91,208.67");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=158.05,272.93");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=99.50,399.44");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=243.61,376.98");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=251.71,339.55");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=211.07,355.61");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=294.05,284.37");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=225.66,314.58");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=295.09,240.48");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=175.98,271.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=140.58,303.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=193.89,366.23");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=159.62,295.98");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=295.59,304.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=285.80,261.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=224.25,406.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=215.22,262.13");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=258.80,237.00");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=161.75,319.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=139.56,271.64");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=39.11,326.30");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=266.99,351.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=201.83,265.10");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=217.79,236.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=235.00,341.92");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=289.81,396.24");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=242.84,320.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=93.58,268.85");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=152.01,323.98");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=169.99,402.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=167.68,259.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=166.33,306.27");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=258.21,299.88");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=186.00,351.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=290.11,327.08");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=246.65,218.54");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=203.25,176.14");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=65.12,242.23");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=198.94,382.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=199.56,316.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=240.88,356.57");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=263.08,285.20");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=176.49,365.72");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=213.81,310.37");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=319.46,337.21");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=183.89,215.82");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=112.44,322.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=130.08,425.93");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=188.12,278.17");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=239.43,265.96");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=276.27,298.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=277.28,329.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=264.44,383.35");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=254.75,327.72");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=173.03,337.05");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=212.64,251.70");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=104.81,346.13");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=230.13,281.24");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=152.32,260.41");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=144.06,316.37");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=240.99,251.41");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=120.29,343.74");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=283.91,310.76");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=168.37,328.10");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=125.18,252.81");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=128.94,367.02");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=152.15,345.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=214.92,273.67");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=253.93,277.44");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=237.60,396.10");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=225.90,337.45");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=310.70,375.63");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=220.81,189.74");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=112.44,250.79");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=68.90,388.13");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=213.23,384.71");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=169.26,352.38");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=192.68,302.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=295.64,366.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=172.51,386.69");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=252.92,228.44");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=242.82,281.85");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=138.07,349.12");
    }

}

