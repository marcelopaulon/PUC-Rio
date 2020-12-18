
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_9
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
        @display("p=136.55,721.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=120.69,648.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=50.16,584.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=90.67,532.62");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=6.94,479.09");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=32.84,399.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=61.35,317.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=116.23,277.05");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=144.09,635.88");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=98.07,685.04");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=195.41,620.78");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=67.35,614.86");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=52.89,527.67");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=14.88,550.67");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=68.70,383.54");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=142.84,334.07");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=106.88,319.43");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=121.13,725.82");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=203.48,773.95");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=147.68,692.84");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=46.13,659.47");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=132.37,524.14");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=10.51,501.17");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=22.79,466.06");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=76.60,306.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=185.76,270.93");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=85.76,638.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=122.70,741.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=98.95,666.82");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=55.73,554.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=152.84,484.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=34.19,476.21");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=37.24,492.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=58.07,269.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=129.57,260.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=118.23,688.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=72.63,738.98");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=158.31,685.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=66.42,571.41");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=129.26,547.45");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=64.86,525.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=108.12,392.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=88.65,258.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=28.23,270.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=56.41,721.60");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=40.65,742.94");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=107.70,645.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=95.79,635.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=134.31,489.98");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=65.95,536.25");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=40.87,368.66");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=32.67,345.93");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=90.94,328.73");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=84.84,748.66");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=220.19,683.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=104.87,619.97");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=15.63,510.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=115.32,615.84");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=15.08,538.69");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=1.55,398.45");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=16.47,396.39");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=125.84,288.77");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=165.10,758.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=195.02,746.93");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=199.76,644.13");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=25.79,551.40");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=82.13,524.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=19.51,447.32");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=51.98,373.01");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=25.56,294.71");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=54.71,294.32");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=95.33,744.80");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=78.46,775.42");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=129.04,596.62");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=3.03,579.87");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=99.04,495.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=41.17,392.09");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=98.73,439.97");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=92.49,341.26");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=53.33,237.03");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=99.00,713.98");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=88.43,704.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=167.54,616.05");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=128.84,612.33");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=157.66,521.96");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=23.16,522.15");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=82.60,413.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=79.46,274.55");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,245.31");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=43.52,753.15");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=204.67,687.47");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=149.76,577.31");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=34.85,576.65");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=30.21,508.51");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=10.73,430.92");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=78.23,457.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=45.97,249.00");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=74.09,364.24");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=45.05,763.60");
    }

}

