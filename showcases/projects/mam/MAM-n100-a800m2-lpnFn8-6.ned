
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-6
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
        @display("p=236.00,584.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=292.29,536.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=379.92,578.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=287.56,567.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=343.04,548.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=368.77,494.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=375.14,593.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=448.28,601.54");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=414.87,571.42");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=401.72,563.59");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=317.67,583.41");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=260.05,597.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=234.78,618.95");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=152.19,531.01");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=222.87,555.33");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=367.23,627.55");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=350.51,606.04");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=358.55,541.23");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=291.85,474.08");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=346.68,566.98");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=400.05,593.04");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=364.08,584.78");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=376.30,520.63");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=331.62,513.53");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=232.58,656.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=285.37,615.08");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=298.18,591.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=294.34,631.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=424.25,526.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=283.64,556.00");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=318.26,498.81");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=429.91,508.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=387.60,630.95");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=434.30,558.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=484.08,499.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=363.58,601.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=332.60,571.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=256.54,640.91");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=246.57,644.85");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=238.96,573.02");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=213.89,589.52");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=421.19,500.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=307.87,616.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=376.63,560.19");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=346.42,510.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=402.06,679.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=477.51,555.92");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=395.57,511.49");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=468.27,491.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=228.81,594.21");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=268.83,612.17");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=266.97,565.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=218.17,635.84");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=243.11,472.02");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=450.00,640.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=255.51,566.73");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=404.03,519.00");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=336.63,449.86");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=336.55,591.12");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=400.31,552.35");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=429.66,546.28");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=348.91,556.99");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=413.54,610.13");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=278.77,657.22");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=175.78,649.73");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=209.23,564.37");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=262.17,531.53");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=354.18,579.55");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=338.20,539.69");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=269.27,516.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=447.04,482.68");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=336.74,603.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=435.77,636.35");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=419.67,559.85");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=466.78,551.27");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=328.81,661.68");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=246.25,586.97");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=294.11,659.55");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=217.86,525.49");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=297.21,563.75");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=420.28,661.18");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=268.15,502.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=371.64,529.73");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=388.91,432.41");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=324.25,615.73");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=429.96,594.84");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=353.55,621.72");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=344.29,520.03");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=272.68,591.34");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=193.98,590.51");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=204.46,653.76");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=215.70,577.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=244.28,539.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=381.49,642.46");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=219.78,508.11");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=311.82,533.08");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=378.70,479.22");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=357.86,565.45");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=472.80,615.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=430.49,584.55");
    }

}

