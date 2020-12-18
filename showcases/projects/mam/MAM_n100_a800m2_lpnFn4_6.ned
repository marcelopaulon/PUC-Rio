
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_6
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
        @display("p=60.13,746.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=9.94,669.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=45.37,684.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=89.70,659.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=66.87,702.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=151.40,700.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=189.02,751.73");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=184.93,762.13");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=212.69,761.73");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=200.77,736.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=106.45,722.79");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=141.42,634.10");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=115.78,657.82");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=97.23,717.91");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=72.96,745.64");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=71.78,779.87");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=98.84,794.23");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=108.96,665.60");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=78.91,701.25");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=128.14,630.21");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=223.36,601.99");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=201.19,577.57");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=228.84,576.91");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=192.60,513.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=81.02,681.05");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=22.16,763.61");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=61.32,677.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=26.41,664.76");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=53.90,724.45");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=61.65,691.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=202.26,648.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=259.18,689.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=248.82,728.43");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=146.86,718.34");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=215.38,697.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=132.44,742.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=190.40,655.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=135.14,676.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=135.51,710.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=161.93,787.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=81.59,774.11");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=146.59,791.24");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=100.11,649.18");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=58.23,757.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=146.65,648.00");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=234.02,550.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=134.47,582.23");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=189.17,555.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,469.74");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=119.89,728.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=122.28,773.90");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=12.51,680.09");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=83.41,669.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=145.60,733.77");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=63.86,730.11");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=186.44,724.00");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=135.66,798.48");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=182.87,796.45");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=213.66,748.81");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=240.75,745.80");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=77.98,646.84");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=115.89,593.07");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=159.05,740.44");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=165.67,759.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=102.53,736.27");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=33.82,724.12");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=53.62,788.76");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=95.18,628.40");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=63.22,631.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=185.44,631.90");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=228.96,566.87");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=234.77,595.49");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=137.38,555.17");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=225.23,541.48");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=112.07,698.26");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=126.98,703.16");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=15.74,718.06");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=37.39,736.26");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=135.00,691.28");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=122.47,676.70");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=217.97,725.09");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=229.57,666.71");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=240.20,700.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=182.47,714.56");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=243.46,651.45");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=50.87,734.13");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=175.05,619.26");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=55.23,648.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=160.29,674.62");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=39.55,713.14");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=133.95,766.20");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=106.87,762.31");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=107.97,611.29");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=57.14,712.16");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=126.61,654.97");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=214.29,617.23");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=224.42,640.60");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=273.71,564.75");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=244.17,482.18");
    }

}

