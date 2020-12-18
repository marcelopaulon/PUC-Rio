
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_7
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=166.20,26.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=164.13,96.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=181.39,126.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=132.21,62.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=150.96,86.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=116.37,126.00");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=65.03,165.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=47.00,146.52");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=49.71,221.30");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=74.67,283.86");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=88.33,302.74");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=105.41,241.24");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=53.09,233.55");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=53.19,201.33");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=109.47,256.57");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=83.60,266.31");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=88.92,341.70");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=157.88,319.03");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=63.87,298.85");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=93.13,284.78");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=171.63,339.41");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=241.65,319.46");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=199.76,290.74");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=229.72,342.04");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=36.07,59.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=104.79,24.84");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=239.71,130.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=145.47,134.89");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=139.84,32.06");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=241.56,54.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=98.08,142.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=113.00,157.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=37.38,143.65");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=37.29,239.49");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=61.90,241.69");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=19.04,368.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=27.90,180.27");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=53.31,273.51");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=4.79,228.23");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=153.25,227.22");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=128.11,276.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=106.46,282.02");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=159.53,372.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=31.55,383.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=107.41,346.62");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=183.03,268.29");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=243.16,282.90");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=200.46,243.53");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=190.97,260.14");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=114.24,11.46");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=180.23,46.57");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=215.76,24.69");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=236.36,151.01");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=103.82,70.38");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=139.57,118.98");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=95.25,189.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=2.41,160.61");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=80.89,72.80");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=20.78,260.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=28.92,199.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=60.07,352.38");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=74.93,326.60");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=37.38,252.83");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=14.71,207.33");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=141.35,231.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=72.96,241.05");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=142.73,297.34");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=98.04,397.36");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=11.86,324.21");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=143.15,355.36");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=220.85,355.46");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=187.80,346.29");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=181.59,303.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=243.41,264.53");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=19.12,153.43");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=218.37,8.88");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=239.57,88.98");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=226.12,113.84");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=155.40,158.15");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=132.78,49.25");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=121.65,169.80");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=68.74,224.71");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=64.34,104.27");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=36.55,265.49");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=123.62,315.10");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=176.18,317.50");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=93.24,244.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=63.81,203.24");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=64.68,152.98");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=130.63,164.33");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=100.04,204.15");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=161.25,389.52");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=110.72,311.73");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=107.32,297.25");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=112.37,202.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=108.25,388.85");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=219.81,394.22");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=193.33,328.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=215.02,345.44");
    }

}

