
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_8
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
        @display("p=8.08,693.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=1.07,711.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=33.49,699.58");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=27.07,786.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=93.24,783.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=131.49,735.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=117.33,723.23");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=71.27,746.03");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=93.39,674.86");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=35.56,657.62");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=40.94,742.87");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=46.36,731.77");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=59.55,788.03");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=126.54,767.40");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=139.44,794.30");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=49.03,668.88");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=136.20,694.70");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=136.98,721.18");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=24.42,710.86");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=85.90,739.95");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=19.51,701.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=13.91,781.18");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=1.38,772.49");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=136.77,763.23");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=124.60,697.73");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=156.94,768.02");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=179.04,672.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=77.12,727.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=67.81,758.55");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=78.82,647.63");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=40.26,773.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=90.14,793.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=118.05,748.50");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=125.77,685.14");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=40.61,789.09");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=17.84,684.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=31.56,632.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=65.20,664.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=71.07,683.63");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=33.74,755.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=95.04,735.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=141.39,639.02");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=101.47,772.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=91.05,661.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=51.83,687.42");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=6.61,664.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=67.59,734.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=7.05,627.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=13.60,766.62");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=99.42,755.11");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=148.97,707.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=103.68,709.94");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=83.72,694.21");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=101.20,719.96");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=51.33,714.00");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=13.33,714.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=64.80,617.32");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=32.67,727.90");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=161.91,718.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=111.26,766.35");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=149.34,666.24");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=152.06,750.38");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=22.05,661.80");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=7.27,750.07");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=4.56,728.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=38.08,686.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=17.35,796.84");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=0.32,799.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=129.75,787.61");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=30.55,679.78");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=54.76,758.68");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=55.47,744.49");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=63.72,707.71");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=44.27,641.78");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=0.44,637.51");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=8.61,738.35");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=21.06,757.78");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=160.35,649.35");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=85.91,717.72");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=90.82,749.48");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=121.18,670.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=74.21,716.28");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=60.81,722.56");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=39.06,714.72");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=22.36,728.22");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=74.92,783.83");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=65.50,774.65");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=133.66,750.91");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=92.57,688.02");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=92.62,629.74");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=72.57,638.49");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=69.99,652.46");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=39.03,670.43");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=33.37,799.55");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=172.46,788.26");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=104.14,782.56");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=192.13,693.66");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=122.33,794.80");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=119.61,737.23");
    }

}

