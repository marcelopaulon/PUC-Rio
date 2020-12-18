
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-1
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
        @display("p=77.00,288.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=10.57,244.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=39.57,257.24");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=52.19,346.65");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=60.54,329.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=103.44,271.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=142.52,214.28");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=68.65,173.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=122.81,200.48");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=54.61,256.22");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=1.07,197.33");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=19.36,224.45");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=37.63,395.85");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=122.89,351.41");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=103.17,287.43");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=164.57,171.94");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=144.47,167.07");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=122.10,189.93");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=64.03,300.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=48.35,292.07");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=18.02,275.02");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=7.02,366.30");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=35.39,363.67");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=42.18,235.57");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=182.05,301.78");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=72.08,155.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=88.92,243.36");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=49.18,219.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=27.20,233.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=29.84,324.18");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=7.49,336.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=97.19,331.57");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=114.16,253.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=206.37,211.43");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=49.73,197.16");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=212.52,192.09");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=141.01,337.16");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=6.42,254.99");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=75.24,331.93");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=86.65,314.27");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=22.54,343.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=43.05,331.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=171.81,229.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=117.26,225.49");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=130.48,220.04");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=62.30,311.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=12.41,173.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=48.68,244.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=85.67,282.13");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=84.47,254.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=40.87,285.33");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=149.92,246.34");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=131.88,235.50");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=37.44,162.47");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=71.74,268.10");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=18.88,253.53");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=33.59,191.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=21.43,301.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=84.08,379.79");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=83.17,297.20");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=194.36,201.99");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=69.46,188.52");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=114.06,211.61");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=115.84,322.55");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=5.90,230.33");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=50.31,274.40");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=106.58,316.47");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=148.54,301.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=69.77,250.01");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=127.47,311.85");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=65.66,237.97");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=97.91,176.14");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=107.14,304.54");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=2.13,289.41");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=24.06,262.88");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=139.46,355.99");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=51.63,313.16");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=188.80,233.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=193.64,221.03");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=68.19,199.08");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=192.76,131.75");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=17.42,290.97");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=28.49,154.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=5.27,348.92");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=80.76,362.03");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=105.43,350.34");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=117.54,268.89");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=58.92,213.79");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=50.16,130.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=91.79,221.74");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=134.45,285.87");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=9.48,151.99");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=77.96,208.48");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=105.38,384.82");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=26.98,353.76");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=154.18,189.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=168.84,266.95");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=92.03,130.07");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=137.44,135.97");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=39.11,298.58");
    }

}

