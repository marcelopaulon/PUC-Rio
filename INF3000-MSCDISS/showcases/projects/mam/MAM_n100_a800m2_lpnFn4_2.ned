
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_2
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
        @display("p=55.07,141.31");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=44.73,133.95");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=123.35,188.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=99.97,162.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=103.41,85.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=151.61,125.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=158.66,155.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=148.84,167.40");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=175.28,91.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=202.49,71.04");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=183.28,99.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=266.70,91.54");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=315.66,164.68");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=323.18,144.15");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=335.91,216.20");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=362.40,175.08");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=300.44,119.97");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=311.42,59.25");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=348.65,17.36");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=290.21,20.61");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=276.06,17.29");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=275.07,27.59");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=181.79,0.77");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=103.62,22.81");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=23.93,129.95");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=53.77,113.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=93.05,90.08");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=83.55,261.12");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=155.69,205.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=131.66,147.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=84.55,196.04");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=160.90,195.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=74.37,101.52");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=174.00,109.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=183.63,66.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=174.21,81.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=266.29,174.49");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=240.31,211.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=242.40,181.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=349.22,262.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=380.06,123.19");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=276.94,71.18");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=308.60,19.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=319.81,38.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=287.86,39.05");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=240.77,47.78");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=322.96,20.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=160.20,30.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=146.95,55.80");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=194.64,90.41");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=92.81,183.13");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=82.22,219.98");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=112.51,215.25");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=69.34,140.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=173.20,153.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=210.35,122.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=219.35,196.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=190.02,129.79");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=209.35,32.65");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=211.22,79.23");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=257.35,162.27");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=315.46,105.13");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=248.78,108.59");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=420.16,128.15");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=257.12,231.80");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=350.59,99.88");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=349.79,182.35");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=302.86,90.03");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=368.62,3.85");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=292.57,76.94");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=212.48,0.32");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=300.02,9.03");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=193.61,6.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=105.82,4.39");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=76.30,74.39");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=69.15,217.77");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=87.86,124.41");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=109.01,279.43");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=11.25,129.42");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=108.65,106.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=62.89,165.28");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=63.80,176.57");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=136.22,200.37");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=133.26,43.30");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=191.89,59.77");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=137.31,84.89");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=244.54,85.01");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=317.39,185.70");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=327.77,124.93");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=363.43,250.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=392.09,163.43");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=316.98,153.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=265.94,81.32");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=393.05,96.62");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=225.87,11.12");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=372.50,32.19");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=344.71,40.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=227.30,39.13");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=38.17,46.94");
    }

}

