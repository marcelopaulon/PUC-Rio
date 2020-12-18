
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_1
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
        @display("p=130.68,345.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=179.22,267.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=176.93,300.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=88.55,335.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=159.53,291.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=187.35,231.70");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=205.97,339.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=293.15,359.13");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=29.89,329.60");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=198.29,280.17");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=153.82,281.70");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=233.50,378.29");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=68.04,294.25");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=77.82,314.66");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=191.49,180.76");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=256.90,311.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=250.22,280.03");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=135.29,298.53");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=155.22,382.42");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=184.07,244.17");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=126.36,254.05");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=33.93,285.85");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=143.44,252.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=218.91,248.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=142.13,342.48");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=389.86,358.83");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=85.94,302.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=163.32,349.39");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=151.48,322.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=111.78,299.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=75.17,352.13");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=116.03,204.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=191.40,207.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=208.89,307.96");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=238.37,291.92");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=104.32,325.42");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=104.29,365.18");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=108.86,232.04");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=122.33,289.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=108.51,310.01");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=223.55,257.87");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=177.02,199.51");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=187.50,308.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=219.83,377.22");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=43.87,297.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=145.45,365.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=162.56,276.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=250.04,323.07");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=61.55,322.93");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=78.33,262.76");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=217.00,203.55");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=213.71,332.51");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=304.20,353.34");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=174.40,352.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=155.83,331.67");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=176.89,281.92");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=225.48,329.09");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=50.50,397.59");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=140.20,285.25");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=196.37,224.36");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=213.43,360.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=228.33,306.98");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=83.03,273.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=106.68,283.15");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=124.06,311.11");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=200.99,329.43");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=184.27,322.87");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=238.90,318.70");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=248.47,220.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=173.24,373.97");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=199.29,353.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=96.07,249.99");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=95.03,277.71");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=149.50,351.20");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=139.11,230.71");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=89.13,351.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=220.26,314.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=148.16,180.12");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=166.47,305.71");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=314.73,360.56");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=165.83,321.48");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=119.10,384.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=195.84,242.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=178.92,221.22");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=40.05,384.20");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=127.56,321.47");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=268.62,233.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=193.36,342.20");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=281.72,354.86");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,251.62");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=145.94,274.45");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=179.69,364.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=116.59,324.62");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=155.32,393.88");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=170.32,291.54");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=105.19,262.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=244.61,341.97");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=360.78,391.04");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=49.97,316.16");
    }

}

