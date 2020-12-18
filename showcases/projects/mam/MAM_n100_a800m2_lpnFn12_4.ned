
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_4
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
        @display("p=96.16,714.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=67.40,667.72");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=4.90,666.70");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=31.51,643.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=80.97,608.65");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=12.12,594.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=25.72,563.41");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=43.13,603.43");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=90.01,704.27");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=12.74,750.51");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=66.20,716.49");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=14.24,687.13");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=51.33,660.20");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=52.25,621.64");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=14.24,645.60");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=2.51,506.24");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=76.91,595.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=91.14,608.44");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=138.78,689.22");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=92.21,653.95");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=0.84,612.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=43.57,671.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=140.36,589.44");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=11.12,584.15");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=30.10,548.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=20.76,600.63");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=150.80,618.09");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=43.03,740.43");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=96.12,573.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=28.81,623.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=40.96,627.66");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=84.25,509.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=89.97,630.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=42.47,511.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=107.20,564.48");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=98.07,684.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=120.81,767.36");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=71.09,646.55");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=84.31,692.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=27.85,686.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=118.36,531.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=51.23,564.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=106.40,599.45");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=90.92,594.72");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=130.01,609.03");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=140.54,644.73");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=50.69,703.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=51.30,610.93");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=51.15,595.79");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=79.40,634.18");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=45.03,684.54");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=123.53,575.79");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=65.28,597.82");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=90.99,768.66");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=123.07,719.53");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=67.94,568.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=15.60,668.85");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=106.83,691.38");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=160.09,631.71");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=51.54,529.18");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=7.14,556.36");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=64.52,541.11");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=159.57,682.07");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=73.44,689.99");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=55.36,741.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=28.48,659.43");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=111.00,611.45");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=124.32,634.24");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=18.96,573.52");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=71.56,586.47");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=88.77,618.18");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=113.18,629.49");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=67.55,745.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=71.29,755.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=95.39,668.05");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=57.26,682.12");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=91.22,583.53");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=12.20,494.37");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=14.38,632.62");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=79.72,680.52");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=117.91,797.38");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=79.13,701.71");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=120.12,645.96");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=16.52,655.70");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=57.45,640.77");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=70.42,624.84");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=44.04,588.13");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=74.05,521.17");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=9.36,604.67");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=88.79,722.47");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=87.90,754.69");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=134.15,717.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=99.49,634.73");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=38.98,615.08");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=168.50,646.06");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=38.78,650.58");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=41.82,550.61");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=91.24,527.42");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=176.72,695.21");
    }

}

