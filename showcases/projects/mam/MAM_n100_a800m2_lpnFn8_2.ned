
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_2
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=187.58,70.21");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=95.87,76.30");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=120.82,167.35");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=138.70,170.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=146.87,162.61");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=124.46,118.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=64.37,79.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=19.52,107.64");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=76.44,179.10");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=138.41,228.52");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=230.80,225.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=212.82,190.16");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=128.51,190.57");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=171.34,118.08");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=47.37,158.72");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=49.63,127.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=74.38,239.40");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=157.75,138.74");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=81.32,41.63");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=78.53,13.63");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=37.88,51.57");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=144.81,148.64");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=103.03,234.42");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=207.82,200.84");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=211.96,213.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=114.50,13.16");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=161.30,71.00");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=23.47,137.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=31.39,127.35");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=172.66,166.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=78.57,119.73");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=140.31,120.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=36.27,80.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=78.14,94.94");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=96.16,160.00");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=58.81,188.33");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=199.13,249.51");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=170.32,211.51");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=112.41,74.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=183.63,41.53");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=60.55,24.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=205.07,125.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=45.37,144.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=169.04,193.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=181.12,138.55");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=21.84,164.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=18.77,120.60");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=105.76,84.50");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=86.05,216.00");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=265.98,225.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=235.95,200.08");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=50.32,100.28");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=245.22,127.25");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=94.00,46.91");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=121.04,137.87");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=109.99,246.92");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=203.79,110.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=131.96,63.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=99.48,135.86");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=7.37,173.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=141.57,136.88");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=157.66,216.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=275.64,238.02");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=218.23,199.94");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=126.52,14.76");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=149.21,128.08");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=117.87,155.65");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=43.75,197.67");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=167.60,144.06");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=169.27,177.28");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=142.94,108.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=71.31,71.75");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=16.06,38.93");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=38.96,257.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=118.58,181.73");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=229.77,208.70");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=208.59,179.19");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=76.31,167.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=240.15,117.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=98.65,124.75");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=71.19,147.30");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=163.86,202.44");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=198.49,211.99");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=158.11,152.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=106.82,63.04");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=29.56,88.50");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=144.56,192.35");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=216.84,227.48");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=242.94,211.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=225.87,237.68");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=136.81,93.39");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=186.50,53.47");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=55.66,165.08");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=81.64,136.63");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=83.11,151.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=172.42,130.18");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=73.63,106.07");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=21.40,72.34");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=65.32,90.07");
    }

}

