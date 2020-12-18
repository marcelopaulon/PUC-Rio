
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_7
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=41.76,690.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=20.03,683.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=91.56,632.98");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=106.88,638.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=101.50,607.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=11.54,638.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=38.75,648.65");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=47.48,673.79");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=66.60,688.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=71.88,633.69");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=60.33,677.28");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=55.20,630.15");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=125.02,680.00");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=34.01,699.19");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=20.63,654.25");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=147.66,560.96");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=158.59,594.26");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=194.20,610.03");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=29.44,637.12");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=98.75,672.44");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=45.28,711.07");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=102.15,762.44");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=157.76,583.72");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=132.41,708.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=80.50,689.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=148.05,719.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=83.72,677.40");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=54.44,690.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=96.50,684.34");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=178.52,699.95");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=146.65,575.23");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=17.28,539.58");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=96.86,617.30");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=49.02,647.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=101.68,747.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=85.71,620.71");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=23.58,763.91");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=11.43,578.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=121.40,715.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=73.70,719.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=61.92,666.00");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=171.04,579.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=142.43,599.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=112.66,538.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=38.44,665.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=110.67,600.12");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=34.91,628.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=88.46,600.45");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=118.01,607.91");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=4.30,686.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=106.52,691.42");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=56.34,701.72");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=10.57,740.11");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=17.54,716.41");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=59.45,616.23");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=150.64,657.01");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=39.96,583.39");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=72.84,572.32");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=65.53,561.14");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=6.85,760.91");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=128.34,697.79");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=111.47,721.14");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=113.00,668.26");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=52.62,543.02");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=106.75,711.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=129.64,659.00");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=25.87,754.13");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=130.07,637.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=78.11,605.68");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=26.53,607.68");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=3.21,619.15");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=76.54,667.97");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=26.46,589.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=31.11,686.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=74.41,622.79");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=59.03,605.19");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=34.61,573.05");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=144.63,632.32");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=54.93,769.69");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=8.21,668.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=172.44,682.51");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=200.55,666.55");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=158.39,561.60");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=10.77,556.75");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=56.41,720.39");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=16.27,587.48");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=152.08,667.56");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=89.98,547.78");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=83.48,589.50");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=47.13,561.77");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=133.59,784.41");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=40.28,615.14");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=1.37,640.59");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=1.71,653.84");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=92.46,581.91");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=68.96,513.67");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=1.66,727.86");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=69.27,740.74");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=30.69,654.69");
    }

}

