
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_5
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=85.97,665.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=115.68,686.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=161.00,768.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=153.74,777.10");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=242.73,747.32");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=252.16,797.91");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=233.90,663.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=156.56,711.40");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=113.49,743.90");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=49.27,714.21");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=149.54,760.14");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=154.44,738.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=196.31,779.86");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=209.49,722.02");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=253.13,755.48");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=310.18,660.93");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=146.28,690.70");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=91.74,637.93");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=10.54,724.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=81.91,705.10");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=202.51,684.86");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=128.80,745.35");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=238.33,730.28");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=268.83,733.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=243.61,587.90");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=66.57,722.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=25.87,653.74");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=145.23,675.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=70.05,659.98");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=146.90,717.46");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=107.75,755.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=245.02,778.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=232.85,789.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=270.37,666.27");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,793.21");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=138.96,727.42");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=69.78,683.99");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=100.31,670.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=100.53,783.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=179.18,775.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=249.61,652.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=315.32,788.63");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=148.21,634.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=170.30,705.24");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=157.91,650.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=74.98,732.87");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=164.11,614.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=179.77,792.63");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=140.92,765.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=215.90,799.23");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=263.65,791.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=229.39,672.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=97.63,736.57");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=63.80,783.85");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=62.45,649.00");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=62.23,607.53");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=139.99,748.89");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=171.11,767.96");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=246.95,764.62");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=277.90,771.29");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=231.63,647.57");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=125.04,706.61");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=59.25,635.10");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=47.56,644.01");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=65.42,771.02");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=70.78,759.76");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=116.53,780.29");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=252.73,719.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=273.39,751.84");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=207.46,652.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=104.75,770.71");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=34.26,635.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=103.11,630.20");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=167.65,660.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=114.51,726.80");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=101.58,711.82");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=227.12,736.91");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=260.30,764.00");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=175.66,742.88");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=173.05,676.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=159.32,696.19");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=71.62,633.32");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=35.56,710.32");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=126.91,687.72");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=166.31,785.46");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=248.09,733.47");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=297.96,717.51");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=242.46,624.67");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=112.91,676.21");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=50.59,623.44");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=137.10,581.37");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=202.91,702.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=198.69,755.10");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=154.82,728.07");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=215.97,741.39");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=221.42,765.72");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=192.28,747.14");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=65.20,703.36");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=120.78,717.13");
    }

}

