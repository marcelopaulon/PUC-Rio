
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_3
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=47.62,79.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=98.83,68.45");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=78.76,8.02");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=87.11,40.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=65.11,46.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=71.20,80.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=99.93,82.93");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=105.33,131.65");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=157.57,98.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=148.20,85.39");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=177.09,67.74");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=125.65,89.40");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=62.05,173.71");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=39.40,145.93");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=81.63,18.16");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=110.77,14.92");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=85.83,53.21");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=93.69,32.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=139.91,150.96");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.64,65.70");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=90.63,194.33");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=189.00,142.06");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=124.89,77.11");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=139.00,131.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=151.19,71.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=121.52,46.43");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=24.21,60.81");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=131.58,158.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=61.89,8.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=58.08,33.00");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=143.37,53.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=52.01,137.44");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=89.27,77.94");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=112.76,230.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=211.05,126.65");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=105.13,172.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=235.72,44.45");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=161.05,28.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=132.51,62.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=53.03,89.41");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=31.28,35.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=102.25,37.78");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=95.85,11.21");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=86.82,103.29");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=46.76,36.90");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=106.56,162.60");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=29.57,74.29");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=157.22,113.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=200.39,6.70");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=189.93,78.25");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=111.78,83.29");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=110.88,146.05");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=62.95,112.24");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=180.94,21.25");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=109.99,29.18");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=34.03,3.93");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=136.61,85.55");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=51.28,169.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=28.68,95.65");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=78.72,119.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=153.94,153.15");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=211.15,161.34");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=173.23,117.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=145.99,170.50");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=91.66,131.62");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=37.23,62.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=11.44,99.09");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=49.86,10.80");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=134.85,18.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=55.23,71.99");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=74.44,139.75");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=170.57,131.62");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=8.97,139.50");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=187.60,100.45");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=219.79,66.80");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=172.03,89.44");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=166.16,37.48");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=144.53,103.25");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=32.86,105.23");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=92.06,112.80");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=148.67,1.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=117.64,4.89");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=87.49,63.67");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=15.06,42.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=109.46,49.30");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=42.69,126.40");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=206.22,37.15");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=142.43,37.91");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=246.64,7.04");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=57.30,56.21");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=123.77,129.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=65.01,124.02");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=94.21,147.14");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=133.98,6.78");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=112.75,109.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=9.49,72.61");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=2.76,55.32");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=85.61,169.37");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=79.89,158.02");
    }

}

