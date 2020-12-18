
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-9
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
        @display("p=195.00,391.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=201.61,321.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=139.27,315.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=136.76,296.85");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=174.70,384.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=225.79,395.09");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=246.31,377.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=253.42,357.30");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=298.02,353.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=295.99,390.89");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=239.96,336.19");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=243.18,299.74");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=256.47,317.61");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=272.79,320.42");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=329.25,309.35");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=385.40,334.65");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=384.07,354.33");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=330.18,286.49");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=370.98,259.43");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=340.04,231.01");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=271.66,162.87");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=259.41,166.78");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=232.61,250.40");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=213.87,215.30");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=176.38,228.26");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=234.39,327.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=159.51,336.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=99.67,344.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=163.21,296.06");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=177.04,297.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=238.14,391.36");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=159.55,375.88");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=307.97,314.80");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=358.57,348.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=266.13,378.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=275.94,284.79");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=200.07,307.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=189.12,307.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=225.62,240.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=317.44,274.12");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=364.13,323.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=322.13,397.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=318.41,260.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=384.29,213.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=324.86,241.26");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=360.78,176.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=269.41,216.77");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=148.88,258.15");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=216.33,205.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=162.63,232.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=101.87,389.60");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=163.84,386.46");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=84.49,382.66");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=54.46,275.92");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=126.95,328.66");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=247.28,399.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=172.36,337.71");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=331.03,360.95");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=338.21,384.94");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=278.21,357.29");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=305.71,384.87");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=280.23,336.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=288.54,295.47");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=211.10,261.49");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=318.35,298.87");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=397.15,281.22");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=370.82,363.65");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=335.10,318.89");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=358.14,249.35");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=362.90,304.70");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=258.30,105.63");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=305.15,228.00");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=272.57,273.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=177.85,179.80");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=206.42,185.48");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=206.01,377.85");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=271.32,259.71");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=140.30,339.82");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=84.44,233.97");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=224.62,383.55");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=181.43,372.71");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=316.66,375.56");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=275.51,394.29");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=317.71,328.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=340.24,399.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=281.21,265.37");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=233.33,279.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=251.26,341.99");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=309.39,247.21");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=352.69,356.90");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=392.33,396.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=372.02,310.31");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=316.80,203.77");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=386.08,174.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=298.03,312.38");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=299.33,169.35");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=312.67,132.74");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=254.78,331.00");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=229.14,123.54");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=180.67,213.81");
    }

}

