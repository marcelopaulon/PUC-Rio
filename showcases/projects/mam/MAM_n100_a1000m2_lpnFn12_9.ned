
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_9
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
        @display("p=20.66,845.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=2.83,810.83");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=45.06,760.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=121.35,804.98");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=112.50,791.82");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=138.49,880.20");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=144.15,844.82");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=111.74,777.14");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=75.99,953.46");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=97.01,867.45");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=57.33,875.82");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=98.06,695.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=151.63,748.33");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=126.12,788.04");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=163.94,816.19");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=174.60,884.02");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=73.80,796.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=60.72,966.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=93.36,892.14");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=6.97,840.55");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=31.42,754.95");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=180.21,794.30");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=101.25,763.81");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=107.35,841.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=88.63,768.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=47.13,735.94");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=27.90,837.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=37.20,928.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=10.15,762.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=42.56,776.93");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=144.35,809.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=187.83,851.19");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=61.26,837.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=131.54,833.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=123.97,825.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=89.34,875.88");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=7.12,861.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=84.08,808.52");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=99.42,746.59");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=55.22,812.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=112.87,753.68");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=169.29,897.42");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=131.63,859.80");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=122.92,776.09");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=15.05,868.44");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=37.38,847.07");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=66.65,820.52");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=139.32,782.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=141.50,764.11");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=73.97,882.76");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=131.18,870.94");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=162.03,777.12");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=162.76,693.38");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=87.38,965.87");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=59.86,892.90");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=27.03,808.70");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=50.27,797.07");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=162.48,879.85");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=196.35,749.61");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=147.44,887.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=201.86,908.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=42.52,710.58");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=16.64,879.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=33.08,799.23");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=93.42,852.02");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=84.46,714.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=207.94,815.41");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=42.67,861.64");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=116.87,969.11");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=154.63,913.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=191.11,816.47");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=147.05,946.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=25.08,922.55");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=8.34,790.29");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=72.94,829.34");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=150.33,865.20");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=113.51,763.78");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=168.02,959.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=158.36,841.38");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=124.25,765.66");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=39.12,889.96");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=16.81,797.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=49.78,848.85");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=66.82,783.31");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=215.26,774.34");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=101.76,884.98");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=123.09,885.27");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=163.29,934.05");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=138.69,726.83");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=115.34,928.80");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=100.59,797.57");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=8.65,827.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=43.31,674.24");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=98.25,807.46");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=47.70,723.15");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=58.56,855.88");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=151.51,790.78");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=32.34,822.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=69.98,922.78");
    }

}

