
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_2
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=62.77,164.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=93.63,161.38");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=59.15,152.17");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=28.36,185.76");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=39.61,242.67");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=11.44,272.14");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=16.65,232.00");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=34.13,291.16");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=14.65,320.39");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=8.24,296.82");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=97.43,271.20");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=112.74,222.57");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=40.99,107.44");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=108.75,191.42");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=136.92,126.41");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=62.14,67.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=50.65,135.79");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=15.27,193.78");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=21.78,261.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=44.50,197.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=30.31,303.02");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=98.03,298.39");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=17.52,348.64");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=105.68,356.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=69.95,220.02");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=81.80,89.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=145.28,150.14");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=89.89,235.67");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=88.55,151.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=64.26,128.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=69.24,198.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=25.59,246.48");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=52.26,175.25");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=39.84,317.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=64.95,374.24");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=24.38,323.86");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=97.39,343.72");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=150.21,194.28");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=162.02,86.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=39.39,175.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=129.03,235.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=18.91,79.71");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=16.72,211.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=65.21,251.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=3.50,278.96");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=67.87,288.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=47.42,348.63");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=24.04,293.65");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=41.29,283.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=75.36,235.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=160.37,181.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=122.68,192.37");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=16.09,133.23");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=95.56,126.20");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=114.15,137.82");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=22.23,170.28");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=71.64,270.08");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=29.53,229.95");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=80.57,217.71");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=72.54,317.65");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=0.26,324.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=9.16,251.22");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=82.78,285.36");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=145.37,138.53");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=119.89,34.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=47.74,125.08");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=65.44,99.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=3.43,137.46");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=8.87,205.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=55.57,191.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=58.35,239.25");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=40.88,232.45");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=79.77,203.51");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=6.24,312.44");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=70.35,352.50");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=165.63,282.19");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=98.79,145.78");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=79.73,73.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=63.82,181.06");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=150.67,124.47");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=116.10,181.34");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=34.02,204.69");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=97.44,209.15");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=50.74,327.97");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=53.62,267.46");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=41.32,260.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=55.02,377.85");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=27.59,278.68");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=33.91,327.24");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=132.63,219.73");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=145.74,177.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=63.45,211.48");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=84.40,186.05");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=5.80,179.81");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=95.46,254.44");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=31.09,216.01");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=30.66,354.13");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=99.80,281.27");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=3.33,356.01");
    }

}

