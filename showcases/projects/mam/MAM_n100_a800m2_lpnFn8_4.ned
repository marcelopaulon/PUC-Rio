
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_4
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
        @display("p=82.05,83.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=15.98,117.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=57.96,178.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=56.29,164.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=39.94,174.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=63.04,238.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=28.22,265.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=11.90,200.74");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=0.79,170.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=73.99,157.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=27.60,86.48");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=119.15,48.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=144.77,59.81");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=158.39,43.73");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=70.91,127.81");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=78.38,109.82");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=43.36,213.38");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=41.86,153.27");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=13.37,159.18");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=105.58,215.04");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=14.62,188.20");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=1.45,160.66");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=104.65,138.08");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=46.49,125.17");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=187.85,77.85");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=146.09,163.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=89.46,26.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=25.34,154.19");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=58.40,129.62");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=113.67,126.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=72.82,201.55");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=70.78,214.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=23.28,251.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=61.76,260.65");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=19.87,99.20");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=119.98,231.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=89.37,140.32");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=109.95,111.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=59.20,38.05");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=32.09,39.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=19.76,130.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=17.45,212.30");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=86.71,165.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=45.08,165.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=22.72,324.07");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=41.01,273.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=16.35,230.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=94.19,155.51");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=119.18,155.42");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=49.08,110.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=140.73,44.07");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=147.28,96.37");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=157.27,99.47");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=8.26,71.48");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=80.89,218.24");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=86.31,179.12");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=68.61,94.12");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=135.14,234.73");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=43.23,232.72");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=25.02,181.15");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=84.31,199.07");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=169.77,144.89");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=52.83,98.01");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=121.13,70.96");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=161.46,167.99");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=120.02,28.61");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,63.53");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=102.53,193.83");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=5.24,148.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=116.94,181.20");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=59.07,199.93");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=22.97,238.23");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=23.94,276.16");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=11.02,249.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=138.02,114.26");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=19.79,76.22");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=141.00,23.89");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=41.25,30.86");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=39.88,58.65");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=29.44,141.91");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=65.25,185.61");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=31.92,105.85");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=89.05,128.66");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=156.98,233.41");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=112.13,309.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=4.63,189.73");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=80.38,120.61");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=116.14,201.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=1.79,89.00");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=103.19,20.37");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=92.16,86.15");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=98.54,2.60");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=52.62,28.10");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=81.57,228.39");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=121.20,110.15");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=25.99,170.73");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=10.72,176.18");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=43.18,298.15");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=12.36,105.86");
    }

}

