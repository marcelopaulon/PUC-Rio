
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-9
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
        @display("p=115.00,376.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=110.51,324.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=66.59,271.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,251.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=50.77,253.23");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=95.63,201.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=135.82,250.19");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=175.24,166.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=180.15,210.97");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=159.75,339.06");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=103.59,290.28");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=135.08,212.88");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=86.69,342.65");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=12.35,272.39");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=43.25,161.30");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=103.86,255.20");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=183.79,152.68");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=201.03,228.31");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=57.39,322.92");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=99.39,385.48");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=47.48,240.79");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=122.12,335.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=79.81,302.90");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=79.60,181.09");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=164.90,279.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=228.61,127.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=139.52,230.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=107.26,365.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=132.91,308.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=70.24,307.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=196.69,267.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=54.52,211.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=70.13,244.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=118.95,209.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=222.61,233.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=137.60,189.89");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=211.38,379.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=36.04,275.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=46.23,328.06");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=128.98,183.47");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=49.95,227.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=130.57,279.87");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=192.48,211.70");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=188.27,170.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=252.88,200.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=131.32,346.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=60.61,386.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=119.40,263.35");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=89.91,311.87");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=53.62,162.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=98.23,233.04");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=203.57,312.50");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=163.81,160.20");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=204.48,179.43");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=116.07,387.57");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=53.63,346.32");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=119.43,353.39");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=147.64,260.43");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=28.15,255.97");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=153.63,140.62");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=98.56,164.17");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=160.48,185.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=266.61,185.41");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=27.07,373.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=101.71,274.34");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=103.02,306.31");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=111.26,240.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=54.22,265.35");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=99.11,183.80");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=158.97,235.46");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=126.87,151.90");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=145.53,217.83");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=91.62,361.97");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=93.23,330.40");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=21.64,245.50");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=163.23,206.13");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=34.10,209.04");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=102.62,193.25");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=141.24,241.00");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=135.49,138.65");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=118.92,160.41");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=180.13,336.01");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=150.89,378.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=80.70,291.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=130.95,236.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=33.15,297.19");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=30.81,128.73");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=118.29,276.76");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=151.52,165.55");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=215.73,221.77");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=129.43,373.21");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=170.02,334.47");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,260.81");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=175.00,305.07");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=19.65,222.29");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=110.63,224.96");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=129.77,265.55");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=250.85,222.53");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=141.63,290.91");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=198.87,342.26");
    }

}

