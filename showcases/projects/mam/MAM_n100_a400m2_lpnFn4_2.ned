
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_2
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=56.22,237.31");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=97.88,248.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=21.87,265.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=29.14,309.10");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=2.88,335.48");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=17.65,386.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=57.90,337.40");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=119.86,333.63");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=92.41,358.47");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=83.08,373.82");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=132.77,322.30");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=155.14,335.85");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=196.29,359.25");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=123.32,353.71");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=173.42,324.22");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=207.13,262.85");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=170.10,206.38");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=170.54,195.61");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=123.98,257.15");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=99.56,205.18");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=51.90,265.88");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=76.61,329.35");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=160.14,317.52");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=141.34,230.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=134.21,268.75");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=70.65,251.16");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=163.40,231.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=16.09,273.89");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=10.28,324.24");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=41.75,287.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=0.51,348.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=40.94,349.84");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=71.30,341.29");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=143.56,336.66");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=54.67,388.69");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=81.55,345.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=175.94,395.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=239.88,310.82");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=89.71,388.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=128.22,309.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=260.19,297.74");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=156.57,215.11");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=141.68,203.06");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=165.67,253.61");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=78.18,147.01");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=50.97,278.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=102.76,273.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=129.00,345.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=209.40,301.69");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=108.70,259.82");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=43.97,234.18");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=127.52,236.77");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=5.46,274.08");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=40.09,306.88");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=59.83,359.84");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=9.93,380.03");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=100.24,389.57");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=195.13,284.54");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=134.95,279.84");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=104.54,398.92");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=54.43,351.29");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=208.72,315.00");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=253.21,355.16");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=192.58,339.13");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=251.49,366.47");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=276.22,227.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=182.07,270.69");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=221.29,244.57");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=122.36,281.91");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=86.92,208.54");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=138.76,296.66");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=150.02,346.10");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=175.10,306.27");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=81.73,272.82");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=47.98,378.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=54.54,203.35");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=156.85,171.63");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=34.63,205.83");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=67.57,392.29");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=0.14,366.09");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=9.12,395.99");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=48.98,326.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=102.14,351.28");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=112.68,323.27");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=84.28,287.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=174.97,360.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=222.37,266.42");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=129.02,382.11");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=119.25,370.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=140.46,356.19");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=241.64,348.39");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=145.53,177.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=194.61,141.44");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=65.14,274.36");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=105.65,216.67");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=22.96,341.87");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=14.83,354.46");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=165.38,341.48");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=87.26,155.42");
    }

}

