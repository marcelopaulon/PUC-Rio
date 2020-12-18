
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_2
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=138.96,167.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=63.87,212.38");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=14.93,155.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=77.43,177.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=62.40,188.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=37.59,131.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=122.52,91.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=137.44,122.14");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=192.71,118.92");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=52.10,158.95");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=109.87,198.04");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=49.53,103.00");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=86.64,162.27");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=39.18,167.62");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=41.51,205.52");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=91.01,135.17");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=150.91,218.45");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=99.25,164.12");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=76.49,121.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=126.91,226.08");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=56.68,116.35");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=6.96,107.15");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=47.82,223.33");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=2.06,181.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=63.22,26.74");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=229.63,109.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=65.93,150.01");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=72.78,94.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=142.09,202.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=113.87,169.29");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=83.36,192.61");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=122.64,237.12");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=127.49,135.10");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=122.28,117.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=213.95,78.24");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=48.66,133.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=208.64,152.18");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=48.11,183.36");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=25.70,246.29");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=107.40,225.70");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=83.01,227.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=0.90,131.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=141.10,43.66");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=179.95,102.39");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=134.70,142.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=142.96,149.98");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=14.81,209.30");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=28.88,69.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=45.03,193.60");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=33.71,145.08");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=98.40,118.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=184.50,78.78");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=194.63,139.63");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=130.32,99.11");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=55.23,199.48");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=92.22,200.74");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=79.11,205.68");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=171.55,208.34");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=2.48,238.54");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=11.62,124.96");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=140.51,54.50");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=152.43,95.21");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=61.55,65.10");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=103.21,212.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=68.69,235.16");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=24.14,97.28");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=55.99,90.53");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=41.35,241.64");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=38.35,64.42");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=108.06,106.24");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=61.28,176.90");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=86.16,97.73");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=191.86,164.01");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=82.10,280.43");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=19.65,132.89");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=120.82,182.38");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=37.39,259.81");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=55.04,141.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=137.63,111.08");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=89.60,148.41");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=149.15,71.77");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=198.38,108.88");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=50.87,213.54");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=10.09,254.76");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=100.89,127.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=88.01,238.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=28.83,113.05");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=169.79,85.14");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=77.39,142.59");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=169.38,134.21");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=115.71,137.19");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=70.29,249.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=7.41,94.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=125.13,207.28");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=29.65,180.49");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=25.37,194.38");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=100.11,71.32");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=98.45,181.03");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=70.74,70.41");
    }

}

