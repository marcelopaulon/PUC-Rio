
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-7
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
        @display("p=66.00,246.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=5.63,272.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=7.22,251.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=25.42,225.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=38.77,245.48");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=19.11,149.25");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=42.28,103.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=25.83,130.88");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=48.76,225.42");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=28.80,236.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=106.25,249.91");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=105.72,199.05");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=127.57,277.93");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=140.69,264.56");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=80.02,305.68");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=22.35,302.85");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=91.24,292.47");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=104.71,360.60");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=104.02,376.34");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=49.67,318.87");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=200.56,263.60");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=213.22,247.22");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=204.02,336.52");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=180.94,290.84");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=216.75,339.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=117.09,322.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=72.12,256.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=38.59,208.51");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=77.13,238.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=130.74,222.75");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=86.58,95.00");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=14.00,35.46");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=3.81,79.97");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=108.42,271.08");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=14.50,240.50");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=100.16,316.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=126.86,176.98");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=122.31,309.12");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=129.45,318.74");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=65.22,299.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=16.08,330.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=104.28,236.81");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=155.88,397.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=75.91,361.79");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=27.73,368.87");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=253.78,203.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=253.93,244.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=265.41,337.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=231.37,320.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=271.64,285.82");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=27.83,262.07");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=5.34,229.85");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=46.95,165.10");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=33.90,152.90");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=10.07,263.24");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=71.91,225.31");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=84.89,156.50");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=16.18,136.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=45.42,198.35");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=74.13,164.45");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=118.70,229.97");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=81.54,107.59");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=75.82,271.07");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=129.67,244.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=14.66,290.16");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=38.55,320.18");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=24.44,251.35");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=114.35,350.01");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=120.12,397.66");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=118.14,268.67");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=221.76,187.78");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=241.95,226.64");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=160.80,356.94");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=123.56,333.89");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=263.13,296.45");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=147.01,294.00");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=66.62,278.97");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=65.88,180.81");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=33.76,302.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=119.30,204.01");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=65.33,205.69");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=42.97,69.24");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=58.62,155.90");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=54.53,185.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=42.41,278.14");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=69.53,317.99");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=96.53,190.94");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=166.90,241.56");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=97.87,208.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=43.23,358.11");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=1.03,299.59");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=187.23,265.68");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=81.77,334.35");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=117.49,368.98");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=45.48,290.36");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=211.56,293.42");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=277.09,239.46");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=150.90,267.56");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=177.80,239.23");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=237.00,290.73");
    }

}

