
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_1
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=94.69,713.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=112.46,723.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=188.29,736.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=190.20,778.68");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=161.28,758.51");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=164.03,779.43");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=106.54,685.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=178.43,640.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=141.99,601.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=150.39,619.35");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=123.63,600.10");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=80.98,535.43");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=107.16,628.27");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=159.77,641.28");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=229.97,681.25");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=223.84,668.80");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=230.55,601.14");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=267.29,560.17");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=272.56,541.65");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=250.74,623.96");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=222.18,623.67");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=206.05,621.20");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=213.43,591.22");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=192.10,619.84");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=26.33,663.24");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=82.47,614.97");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=128.13,725.79");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=116.52,679.01");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=270.84,759.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=196.79,792.93");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=175.17,759.38");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=124.94,699.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=201.43,703.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=119.47,511.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=147.85,536.31");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=126.77,554.23");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=99.60,607.33");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=133.28,607.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=225.13,579.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=239.04,780.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=262.21,740.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=166.71,530.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=287.77,623.25");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=255.68,571.62");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=319.35,695.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=276.09,639.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=194.52,606.81");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=121.73,576.83");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=148.35,645.91");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=142.86,716.50");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=92.89,772.26");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=145.14,656.21");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=157.70,654.78");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=161.35,795.81");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=135.25,743.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=175.16,704.80");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=103.79,765.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=187.87,648.96");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=87.94,640.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=66.74,575.86");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=124.09,589.65");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=90.07,588.56");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=55.20,629.89");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=157.69,550.04");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=260.99,650.27");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=213.84,639.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=269.37,680.20");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=282.84,472.42");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=285.53,557.81");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=272.71,526.83");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=315.10,643.75");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=168.38,681.35");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=244.29,576.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=183.25,590.91");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=17.08,645.44");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=146.91,769.82");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=42.74,770.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=173.88,781.81");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=289.43,779.01");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=174.78,718.01");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=261.46,785.86");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=92.34,654.49");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=214.22,708.63");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=174.05,618.94");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=180.62,557.05");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=108.45,594.07");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=70.84,552.35");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=46.29,670.48");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=205.07,719.78");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=237.31,667.46");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=132.38,706.57");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=230.63,644.38");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=257.51,463.79");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=327.88,593.38");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=276.08,606.65");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=253.51,611.69");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=203.38,599.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=211.64,663.07");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=194.84,558.93");
    }

}

