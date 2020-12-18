
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_5
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=48.66,327.75");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=154.13,219.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=95.74,243.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=73.22,325.54");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,319.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=118.67,362.76");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=144.71,330.66");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=236.58,342.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=181.75,310.17");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=201.72,382.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=212.79,295.71");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=178.99,236.08");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=209.87,169.39");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=131.71,123.75");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=163.29,164.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=91.37,125.53");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=140.63,65.88");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=131.76,79.03");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=142.28,4.76");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=182.53,9.67");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=167.92,50.73");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=146.04,46.08");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=154.65,62.79");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=225.90,59.23");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=113.12,277.14");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=19.26,313.30");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=165.50,211.24");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=70.07,249.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=59.64,327.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=180.59,332.66");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=89.78,354.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=133.65,351.77");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=162.01,310.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=159.12,294.92");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=117.17,333.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=213.08,272.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=111.52,231.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=241.55,204.11");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=132.70,51.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=199.50,197.92");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=101.08,114.19");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=110.07,83.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=97.10,20.13");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=102.41,70.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=127.70,0.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=170.27,38.70");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=197.61,39.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=175.90,65.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=207.37,27.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=64.29,229.20");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=2.64,362.96");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=128.44,229.12");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=82.75,332.79");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=8.99,301.68");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=108.60,256.50");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=132.09,368.50");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=82.78,374.35");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=179.24,350.70");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=191.29,347.35");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=200.80,367.56");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=244.00,282.60");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=254.30,243.50");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=186.08,83.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=202.84,99.66");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=187.46,185.93");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=131.01,35.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=139.99,148.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=116.68,38.35");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=189.87,54.46");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=150.66,77.70");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=208.88,69.10");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=87.30,2.73");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=154.65,110.43");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=248.69,72.48");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=60.45,287.97");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=57.06,338.88");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=88.57,259.45");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=112.95,298.41");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=135.31,285.91");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=147.56,356.40");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=137.19,380.11");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=120.17,374.80");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=207.61,355.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=222.39,300.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=234.61,395.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=250.59,264.00");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=195.29,290.18");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=199.81,182.43");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=116.14,117.42");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=124.14,138.61");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=102.41,162.49");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=224.55,69.70");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=75.51,12.18");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=147.93,18.46");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=198.15,17.10");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=171.02,81.25");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=187.10,36.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=114.49,145.92");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=216.66,121.82");
    }

}

