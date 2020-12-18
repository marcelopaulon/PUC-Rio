
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_3
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
        @display("p=150.97,383.26");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=133.77,382.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=171.33,318.14");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=145.47,310.24");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=167.49,229.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=111.28,176.53");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=97.60,129.82");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=96.77,100.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=158.66,149.24");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=200.82,124.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=197.91,94.97");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=193.29,138.00");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=205.76,196.42");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=128.33,235.05");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=149.06,272.10");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=214.12,271.23");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=274.90,257.90");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=283.87,346.08");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=310.64,312.02");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=377.71,363.59");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=388.25,292.03");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=371.12,295.28");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=346.22,319.89");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=285.82,358.28");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=48.55,244.35");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=177.93,367.91");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=199.81,320.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=258.66,313.35");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=189.00,376.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=145.45,200.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=168.42,177.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=130.54,179.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=27.01,105.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=142.41,180.69");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=222.55,124.30");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=172.42,120.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=202.51,72.46");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=216.18,188.21");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=108.44,195.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=134.16,277.22");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=280.71,198.87");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=254.18,283.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=309.01,348.66");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=346.96,380.45");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=338.15,371.60");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=307.60,252.59");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=326.14,260.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=288.25,396.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=335.34,328.38");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=44.82,286.72");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=68.68,392.02");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=112.05,376.07");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=237.55,364.64");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=192.07,230.32");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=102.58,263.40");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=131.15,130.56");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=71.17,139.60");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=114.51,99.55");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=108.31,115.76");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=181.39,75.22");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=161.56,40.00");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=177.22,141.46");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=240.20,232.62");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=66.82,250.41");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=108.91,250.39");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=219.21,324.19");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=353.05,234.95");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=292.48,380.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=257.76,384.61");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=362.32,391.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=344.94,282.31");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=390.65,217.04");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=393.89,378.99");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=274.20,334.40");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=176.18,263.27");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=149.29,298.58");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=123.46,380.36");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=138.96,368.53");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=149.37,329.57");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=197.09,173.75");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=115.61,162.68");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=85.13,168.50");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=109.16,51.99");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=75.31,178.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=191.98,117.02");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=189.71,100.89");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=232.15,115.17");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=180.78,188.50");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=45.06,219.07");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=200.95,272.31");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=162.55,342.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=345.11,214.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=216.53,353.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=248.96,337.37");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=346.52,351.07");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=383.87,245.49");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=361.65,330.86");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=348.19,298.01");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=212.74,366.34");
    }

}

