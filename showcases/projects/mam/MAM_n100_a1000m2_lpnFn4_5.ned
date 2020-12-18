
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_5
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
        @display("p=112.96,963.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=85.17,942.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=64.71,944.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=73.02,910.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=26.86,861.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=36.97,857.09");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=36.08,845.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=20.11,839.65");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=56.55,833.69");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=101.98,768.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=118.55,775.23");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=109.77,759.36");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=145.88,791.06");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=136.03,779.88");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=157.58,789.80");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=110.22,798.95");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=96.47,818.91");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=64.63,742.73");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=135.93,700.97");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=180.71,641.36");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=222.11,694.11");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=219.84,713.30");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=241.40,702.59");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=316.51,681.53");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=120.52,947.76");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=79.03,964.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=123.34,913.79");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=14.18,966.89");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=63.48,857.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=38.61,783.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=2.09,801.00");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=36.65,873.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=81.77,791.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=43.36,836.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=117.21,737.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=98.96,751.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=81.56,729.96");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=94.91,787.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=127.25,800.82");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=155.22,774.90");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=81.64,740.85");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=70.89,896.01");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=18.79,789.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=79.03,693.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=127.91,676.48");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=241.59,686.81");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=250.35,765.97");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=232.10,731.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=299.34,660.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=81.89,806.06");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=102.99,964.97");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=78.67,922.91");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=86.28,977.85");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=114.91,835.72");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=27.60,893.64");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=6.68,824.54");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=56.83,903.16");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=60.38,785.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=13.13,799.39");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=169.57,703.40");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=110.64,788.14");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=19.84,761.17");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=174.69,852.61");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=122.38,790.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=216.74,729.40");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=50.61,810.34");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=87.26,847.73");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=82.16,658.11");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=148.47,705.43");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=257.38,652.21");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=177.22,753.89");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=180.58,683.63");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=245.89,649.34");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=275.07,755.50");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=119.77,928.19");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=174.93,905.81");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=131.44,998.00");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=74.37,979.14");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=75.08,868.10");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=77.97,878.41");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=48.18,854.52");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,839.11");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=14.43,898.83");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=119.07,870.22");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=198.46,762.49");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=148.96,810.17");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=53.77,714.18");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=161.82,802.98");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=154.50,763.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=167.37,734.74");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=26.32,805.78");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=180.66,807.29");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=146.13,740.88");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=196.02,696.49");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=170.27,655.49");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=210.84,625.93");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=186.88,713.83");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=235.66,758.29");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=305.72,750.57");
    }

}

