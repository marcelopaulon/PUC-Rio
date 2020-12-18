
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_7
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
        @display("p=57.87,812.00");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=46.72,810.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=2.59,741.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=5.07,770.09");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=9.01,796.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=23.33,827.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=25.52,747.04");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=69.62,723.51");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=57.87,840.09");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=5.56,730.20");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=123.31,755.57");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=53.79,669.12");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=23.06,770.00");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=22.66,796.02");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=29.70,812.66");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=84.49,767.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=131.68,683.82");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=30.38,876.81");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=51.21,820.94");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=101.46,868.57");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=12.67,667.78");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=46.26,757.49");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=66.56,794.64");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=25.44,848.98");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=92.50,803.93");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=71.71,760.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=106.39,856.11");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=145.25,837.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=49.22,850.36");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=15.36,749.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=50.58,800.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=74.59,783.48");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=31.18,904.84");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=35.32,752.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=50.16,726.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=75.34,959.36");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=58.80,758.88");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=18.62,866.49");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=42.92,773.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=66.25,741.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=19.86,781.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=20.76,838.59");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=44.39,674.55");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=65.82,648.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=142.51,880.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=36.79,797.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=92.42,752.69");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=67.55,708.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=10.90,825.56");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=67.23,869.54");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=86.41,851.50");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=24.69,698.54");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=79.98,727.24");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=69.59,854.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=103.27,772.90");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=99.00,842.11");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=2.08,649.79");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=21.86,758.25");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=0.87,802.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=63.01,830.86");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=80.61,739.44");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=78.73,701.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=110.35,923.62");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=41.56,838.81");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=68.25,811.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=14.72,736.94");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=37.69,850.41");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=10.78,890.47");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=35.85,822.62");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=18.38,725.63");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=81.58,750.57");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=80.41,974.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=117.58,867.59");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=126.79,836.48");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=88.18,791.10");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=42.42,693.02");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=12.20,848.20");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=8.62,868.80");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=52.70,744.19");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=15.25,684.69");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=76.20,837.26");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=63.73,820.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=41.53,865.30");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=35.67,732.70");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=11.59,762.01");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=57.82,735.25");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=76.61,908.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=103.36,726.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=54.60,695.44");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=116.45,963.94");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=79.76,801.54");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=20.27,878.59");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=63.34,784.88");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=99.84,787.34");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=11.44,811.53");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=100.55,824.01");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=3.44,661.64");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=78.23,668.30");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=40.60,946.28");
    }

}

