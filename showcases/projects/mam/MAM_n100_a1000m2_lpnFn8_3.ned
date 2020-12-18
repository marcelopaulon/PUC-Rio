
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_3
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=95.20,912.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=111.84,835.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=89.03,757.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=27.90,684.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=4.78,640.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=50.39,623.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=19.70,531.19");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=64.72,468.77");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=116.47,526.67");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=43.69,530.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=22.39,497.02");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=94.05,514.25");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=50.50,884.26");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=101.87,930.10");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=150.01,787.64");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=109.54,780.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=30.88,773.28");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=74.25,604.73");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=40.56,631.21");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=23.62,591.07");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=116.63,418.26");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=209.69,535.86");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=60.53,580.11");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=21.30,449.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=73.63,545.97");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=91.65,876.37");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=36.60,927.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=62.19,860.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=103.48,757.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=0.85,655.63");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=40.95,612.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=42.94,695.17");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=12.42,487.94");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=88.78,435.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=117.72,579.63");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=60.73,531.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=111.66,505.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=106.66,490.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=87.39,926.79");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=94.99,938.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=183.75,787.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=169.34,769.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=123.67,673.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=59.11,649.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=19.58,647.60");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=58.57,454.58");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=107.30,451.81");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=138.06,507.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=81.66,524.96");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=50.80,484.32");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=39.17,435.89");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=94.42,830.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=76.85,942.04");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=140.31,862.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=103.53,716.60");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=0.13,728.39");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=78.12,707.12");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=7.97,545.04");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=67.84,557.13");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=85.34,401.24");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=131.57,573.90");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=81.84,582.24");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=24.15,544.83");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=104.97,512.99");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=165.79,835.00");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=127.73,953.89");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=99.25,812.25");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=134.89,708.50");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=12.37,684.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=12.43,577.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=57.44,605.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=27.02,522.85");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=57.56,508.18");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=137.11,596.35");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=39.60,543.76");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=6.81,525.18");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=120.74,597.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=84.31,952.16");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=88.55,969.00");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=67.97,814.75");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=79.69,687.68");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=69.05,663.09");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=97.98,665.95");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=93.82,595.52");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=0.61,506.01");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=139.32,475.39");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=44.02,595.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=42.99,476.29");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=33.12,482.76");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=118.11,473.73");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=81.15,907.19");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=140.50,837.28");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=87.36,849.29");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=163.11,722.86");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=46.20,780.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=18.04,622.33");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=80.92,640.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=35.31,569.63");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=43.17,558.95");
    }

}

