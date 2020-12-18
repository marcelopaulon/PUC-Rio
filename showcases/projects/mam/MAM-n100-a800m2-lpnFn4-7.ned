
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-7
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
        @display("p=320.00,553.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=283.89,531.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=303.28,545.79");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=304.82,527.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=215.57,569.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=169.94,608.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=247.09,601.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=246.21,563.82");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=161.82,576.48");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=241.80,542.53");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=291.99,523.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=236.24,519.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=228.61,501.87");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=305.34,442.79");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=216.08,481.80");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=231.50,480.89");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=216.42,498.80");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=201.47,507.70");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=134.11,495.90");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=132.37,567.55");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=172.93,638.50");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=188.39,680.18");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=144.00,689.30");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=60.38,717.50");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=54.60,792.04");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=322.98,516.64");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=275.61,483.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=277.58,518.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=283.09,502.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=200.37,546.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=220.46,588.95");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=270.44,618.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=251.30,503.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=175.72,535.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=214.65,552.94");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=312.75,468.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=262.41,555.60");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=218.44,519.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=347.42,449.49");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=137.24,428.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=241.64,577.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=248.54,489.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=163.52,530.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=113.50,495.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=112.99,600.04");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=251.37,689.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=209.63,746.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=177.99,721.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=30.30,775.78");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=46.10,694.01");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=228.72,570.61");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=286.63,567.22");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=318.61,450.47");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=331.13,565.34");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=196.52,613.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=192.96,703.50");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=248.14,613.78");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=191.41,539.14");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=181.59,592.12");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=166.86,542.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=360.48,483.29");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=280.23,555.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=255.45,461.28");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=297.56,434.70");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=153.73,410.90");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=226.71,457.26");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=164.15,486.64");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=147.36,508.28");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=120.30,399.62");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=135.06,535.36");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=112.08,669.20");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=138.41,642.60");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=125.69,702.21");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=99.31,646.13");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=28.94,751.20");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=335.67,614.30");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=261.78,609.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=302.79,461.29");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=395.26,541.61");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=183.46,571.61");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=77.39,622.25");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=321.26,642.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=244.59,475.18");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=123.03,575.05");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=208.20,617.79");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=213.76,462.50");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=279.45,468.39");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=240.22,465.35");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=328.10,454.88");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=177.80,492.36");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=152.60,493.18");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=171.29,473.48");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=185.03,446.23");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=143.31,594.75");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=214.92,529.37");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=164.78,644.53");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=244.64,704.57");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=90.72,651.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=67.39,755.45");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=23.10,715.92");
    }

}

