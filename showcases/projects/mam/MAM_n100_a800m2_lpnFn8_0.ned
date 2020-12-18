
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_0
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
        @display("p=6.29,670.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=63.12,733.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=6.05,740.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=34.63,692.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=8.75,690.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=4.44,703.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=46.17,765.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=96.11,737.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=83.13,710.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=81.58,693.01");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=141.39,718.61");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=177.41,637.42");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=54.57,718.60");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=76.20,722.43");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=107.88,730.73");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=56.93,706.11");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=15.78,615.03");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=66.46,695.54");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=15.42,655.22");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=30.45,755.14");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=23.95,765.34");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=57.61,671.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=157.26,648.52");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=152.42,721.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=200.03,603.78");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=40.50,649.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=49.77,658.67");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=119.24,749.84");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=33.88,703.03");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=48.83,683.56");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=20.43,672.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=91.66,694.29");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=66.53,774.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=85.15,731.50");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=120.95,730.29");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=89.40,631.76");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=122.66,788.17");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=148.89,666.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=156.07,691.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=40.30,630.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=55.81,633.98");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=28.50,728.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=97.08,645.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=1.20,623.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=16.46,714.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=62.81,786.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=113.27,783.01");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=106.13,678.06");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=99.98,771.06");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=122.44,714.00");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=200.04,673.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=112.98,696.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=3.05,575.29");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=48.52,734.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=41.18,776.42");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=27.07,711.46");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=22.97,633.25");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=20.17,698.64");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=9.40,773.49");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=40.56,798.87");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=79.21,640.59");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=77.14,683.20");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=129.10,698.37");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=257.58,593.67");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=46.90,696.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=71.67,651.16");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=32.88,738.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=42.81,749.48");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=41.96,614.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=61.39,644.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=68.99,629.95");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=87.12,676.18");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=35.24,766.15");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=36.87,722.81");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=94.88,755.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=144.79,736.88");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=199.89,650.76");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=130.42,747.14");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=33.41,599.66");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=135.68,787.58");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=5.92,725.39");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=56.48,743.69");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=57.79,605.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=1.96,643.23");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=88.05,721.03");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=78.88,761.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=57.13,690.54");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=151.98,681.62");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=136.59,708.55");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=151.64,604.97");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=99.16,725.46");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=26.88,681.74");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=12.28,798.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=12.50,750.88");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=79.45,604.98");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=33.15,671.81");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=44.43,715.06");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=117.87,768.34");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=138.83,691.05");
    }

}

