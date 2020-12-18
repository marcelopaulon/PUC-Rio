
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-0
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
        @display("p=160.00,246.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=179.47,173.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=161.97,177.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=187.43,267.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=148.93,287.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=113.70,248.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=114.90,238.41");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=42.48,178.75");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=60.80,220.44");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=166.09,259.94");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=238.94,111.21");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=182.99,105.69");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=185.95,302.01");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=79.52,303.86");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=114.23,185.07");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=149.82,234.41");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=50.16,227.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=24.23,234.76");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=213.36,221.79");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=174.37,132.94");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=170.45,187.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=111.75,278.95");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=58.89,265.96");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=173.45,208.46");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=115.81,259.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=64.41,146.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=22.50,132.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=76.09,242.04");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=184.21,184.01");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=100.48,101.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=141.59,204.56");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=234.21,333.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=196.10,209.44");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=87.95,225.73");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=101.51,151.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=74.84,167.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=217.67,266.10");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=270.24,171.25");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=182.48,148.16");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=222.56,177.52");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=154.60,207.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=135.39,276.03");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=126.48,235.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=43.65,236.02");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=152.82,258.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=122.72,326.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=205.64,159.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=91.40,109.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=221.51,310.76");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=175.78,296.49");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=137.65,260.12");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=123.55,218.49");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=51.25,165.19");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=91.76,204.29");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=206.67,236.87");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=253.83,199.00");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=102.40,214.81");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=170.24,247.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=163.65,276.95");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=142.07,242.10");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=104.84,197.83");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=13.59,255.07");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=90.55,284.29");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=78.09,288.65");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=138.13,113.10");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=144.86,181.98");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=160.94,352.47");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=91.56,250.49");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=114.34,213.05");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=122.21,274.82");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=70.49,264.73");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=12.61,207.02");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=118.82,309.39");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=212.14,184.53");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=245.13,165.32");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=220.58,282.95");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=62.50,312.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=197.99,247.35");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=189.24,226.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=27.62,167.20");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=19.95,189.20");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=246.97,245.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=223.28,109.37");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=202.99,89.51");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=172.67,285.61");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=121.56,293.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=98.94,327.81");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=82.27,214.55");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=60.76,127.36");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=54.05,200.69");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=130.27,168.44");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=197.31,175.81");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=126.29,265.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=211.38,338.59");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=181.50,279.44");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=94.75,174.44");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=34.42,283.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=60.73,168.45");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=85.32,149.35");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=255.31,264.95");
    }

}

