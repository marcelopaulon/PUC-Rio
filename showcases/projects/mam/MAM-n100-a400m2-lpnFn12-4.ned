
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-4
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
        @display("p=163.00,239.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=194.45,230.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=194.08,306.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=148.27,281.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=130.59,289.10");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=155.29,331.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=134.45,338.57");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=118.61,295.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=152.39,267.82");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=153.50,257.66");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=204.44,206.06");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=234.27,325.35");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=71.08,233.23");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=106.00,269.80");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=116.48,391.64");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=142.57,377.24");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=37.66,284.43");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=161.65,287.89");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=110.62,249.47");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=209.63,322.88");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=182.94,379.36");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=112.88,349.83");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=78.91,272.61");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=117.01,264.12");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=191.36,371.88");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=164.78,363.17");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=229.38,314.45");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=158.16,312.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=215.10,258.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=230.95,334.91");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=183.26,262.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=119.69,326.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=246.82,323.65");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=194.27,260.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=67.00,336.98");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=171.51,180.48");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=142.58,293.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=186.77,247.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=225.32,367.91");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=180.16,285.17");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=79.99,333.47");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=167.93,378.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=65.07,295.77");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=175.63,335.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=154.68,227.64");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=237.64,225.05");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=246.06,309.81");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=103.79,280.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=181.69,205.85");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=124.39,190.45");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=171.12,389.93");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=114.15,362.98");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=129.72,360.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=203.21,283.89");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=150.26,185.21");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=238.39,237.83");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=128.08,274.56");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=175.81,246.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=71.37,280.50");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=146.95,356.41");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=38.04,357.58");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=93.07,340.09");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=166.62,273.05");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=229.67,196.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=229.14,259.11");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=269.21,287.83");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=69.17,249.32");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=100.35,255.35");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=207.26,338.34");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=91.28,269.58");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=84.40,305.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=218.27,237.95");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=153.28,243.35");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=251.65,236.10");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=283.92,265.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=102.36,298.44");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=202.78,300.00");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=129.46,315.12");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=125.34,345.49");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=50.41,316.84");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=175.91,232.49");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=170.61,223.71");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=254.60,212.55");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=124.51,303.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=103.54,204.95");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=62.84,239.68");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=213.71,280.05");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=145.82,342.52");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=170.11,305.11");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=113.91,198.23");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=105.69,225.66");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=163.35,189.22");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=105.97,312.39");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=206.46,355.41");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=90.26,290.22");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=166.17,345.94");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=102.80,361.19");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=92.65,319.47");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=140.54,254.37");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=180.47,219.24");
    }

}

