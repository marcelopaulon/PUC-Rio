
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-3
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
        @display("p=243.00,110.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=248.13,65.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=220.63,60.78");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=205.29,111.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=292.07,156.03");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=225.84,196.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=285.29,208.54");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=290.86,248.09");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=309.10,251.29");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=406.57,239.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=485.14,244.68");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=427.84,232.54");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=465.60,222.18");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=400.72,266.68");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=442.93,320.10");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=449.53,339.52");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=455.60,327.31");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=474.09,282.31");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=528.70,282.59");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=543.28,240.66");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=491.58,227.70");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=477.40,203.80");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=496.11,193.69");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=506.41,202.39");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=502.07,300.95");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=319.63,122.97");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=317.58,74.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=262.20,81.89");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=157.04,75.68");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=246.63,152.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=257.65,236.75");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=267.00,195.05");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=220.10,268.91");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=383.16,207.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=390.64,169.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=530.07,321.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=374.15,202.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=406.83,300.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=368.60,257.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=493.11,329.57");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=535.05,311.78");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=386.30,323.61");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=517.50,324.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=521.45,361.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=639.35,243.85");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=528.09,200.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=452.49,151.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=504.20,243.35");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=538.19,278.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=497.84,314.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=160.06,155.10");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=237.22,60.76");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=186.76,57.13");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=258.86,126.20");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=310.74,137.43");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=283.99,227.99");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=311.80,153.11");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=328.57,243.53");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=274.04,234.31");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=450.94,277.57");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=450.60,201.99");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=454.05,297.10");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=561.72,201.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=441.92,258.48");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=470.19,335.37");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=450.44,354.03");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=468.67,419.26");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=457.73,232.60");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=617.92,310.45");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=546.17,220.52");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=480.55,293.82");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=473.55,232.42");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=503.91,225.95");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=532.55,151.52");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=525.81,292.79");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=262.69,55.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=318.00,13.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=234.48,40.05");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=216.58,137.66");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=328.72,201.40");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=144.67,173.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=267.34,302.42");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=300.97,219.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=277.47,251.75");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=410.62,167.47");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=486.92,258.18");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=418.55,209.05");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=472.45,212.96");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=357.67,281.69");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=365.93,326.42");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=376.77,368.04");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=423.43,319.07");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=462.97,197.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=530.48,269.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=469.48,297.61");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=503.70,279.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=423.49,162.14");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=452.13,132.34");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=515.68,155.94");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=450.11,251.27");
    }

}

