
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn1-0
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
        @display("p=735.00,758.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=769.56,690.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=752.43,733.27");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=762.41,786.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=729.95,795.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=751.67,744.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=739.71,741.75");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=774.33,732.89");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=786.01,703.48");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=690.65,716.38");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=699.48,753.48");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=668.65,795.04");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=612.59,747.79");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=623.07,785.71");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=563.92,712.10");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=527.79,784.97");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=522.77,704.82");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=531.39,688.32");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=463.09,694.06");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=487.99,631.77");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=438.24,599.85");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=465.47,586.76");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=423.38,581.41");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=411.27,571.90");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=425.58,666.37");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=488.00,601.10");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=426.62,632.70");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=353.37,690.61");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=331.71,689.34");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=356.15,757.59");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=340.17,751.78");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=317.62,790.11");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=260.14,788.07");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=270.27,736.83");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=254.05,777.81");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=226.24,777.20");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=242.50,781.66");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=202.13,766.74");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=124.21,710.12");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=151.27,680.62");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=120.52,686.30");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=111.28,763.34");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=97.67,798.01");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=137.97,798.17");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=165.33,782.41");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=143.73,782.52");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=183.30,794.23");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=267.25,799.66");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=168.96,795.66");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=158.38,717.98");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=198.37,689.71");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=98.79,682.96");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=91.03,695.30");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=139.55,656.46");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=72.90,595.84");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=142.82,584.77");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=139.94,605.81");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=175.12,636.04");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=194.96,653.21");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=184.44,585.68");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=205.01,616.92");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=230.32,624.04");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=239.64,672.02");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=242.75,661.42");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=311.31,629.90");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=334.69,532.87");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=420.06,488.22");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=466.52,459.51");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=371.41,447.48");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=445.43,391.72");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=431.77,425.17");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=414.20,447.35");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=375.44,464.82");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=336.23,460.40");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=339.62,470.10");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=289.91,451.21");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=280.31,419.43");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=217.14,369.36");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=151.25,388.97");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=79.30,433.11");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=62.79,479.02");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=29.59,567.70");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=18.57,560.47");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=82.44,577.82");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=2.19,535.49");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=27.97,470.85");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=38.74,421.69");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=35.08,402.31");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=36.13,500.57");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=98.43,446.02");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=119.04,473.14");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=162.19,466.95");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=171.41,476.06");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=120.79,491.49");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=120.39,557.01");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=217.68,539.20");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=215.21,596.54");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=232.35,609.23");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=235.21,693.98");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=249.13,677.17");
    }

}

