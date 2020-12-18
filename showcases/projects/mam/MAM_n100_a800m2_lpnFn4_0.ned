
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_0
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
        @display("p=67.20,727.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=0.67,685.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=35.63,699.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=24.14,643.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=39.50,660.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=27.65,685.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=96.33,679.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=59.52,596.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=79.67,617.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=67.94,586.84");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=5.50,662.45");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=10.84,671.70");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=21.79,666.85");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=31.24,756.90");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=18.91,755.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=7.82,790.60");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=127.24,701.75");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=178.10,775.21");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=101.75,793.56");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=142.24,755.28");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=141.80,729.91");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=193.55,709.58");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=254.01,697.05");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=221.89,768.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=93.10,713.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=83.87,694.28");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=14.00,591.11");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=47.83,676.68");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=5.47,583.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=56.88,578.88");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=60.32,676.11");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=40.41,684.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=20.52,567.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=45.65,609.13");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=92.70,657.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=28.78,716.13");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=54.61,747.49");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=119.69,669.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=114.26,792.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=54.59,736.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=90.56,772.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=108.75,744.51");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=244.44,760.13");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=41.42,775.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=96.32,730.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=173.96,653.47");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=106.14,724.34");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=214.91,633.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=172.66,711.86");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=84.60,630.07");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=74.10,719.51");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=11.67,685.74");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=119.29,687.10");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=108.13,651.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=63.48,705.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=43.13,596.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=175.53,685.14");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=141.30,595.28");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=57.85,564.91");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=34.75,580.83");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=73.20,661.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=25.27,656.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=47.70,645.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=29.84,767.29");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=2.07,737.91");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=2.53,717.18");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=159.50,657.82");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=217.88,786.26");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=158.57,735.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=153.47,787.25");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=171.39,760.59");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=211.54,796.22");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=347.71,719.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=257.75,722.87");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=68.13,761.40");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=37.84,744.23");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=70.22,632.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=60.59,612.87");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=116.67,609.97");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=6.73,573.25");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=15.96,734.27");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=55.12,627.48");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=47.76,584.58");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=104.49,550.20");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=10.03,523.68");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=35.99,647.23");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=13.48,645.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=43.01,635.04");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=64.79,691.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=45.06,763.66");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=17.69,794.20");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=196.40,744.23");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=158.41,771.87");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=106.69,754.90");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=163.76,702.88");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=166.78,747.46");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=182.41,754.72");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=286.03,776.87");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=319.03,761.30");
    }

}

