
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_7
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
        @display("p=100.83,85.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=87.87,111.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=125.37,158.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=64.42,198.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=123.45,230.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=130.79,148.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=56.33,207.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=117.75,187.11");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=63.25,104.36");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=128.58,100.16");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=149.20,81.29");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=135.49,138.78");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=77.52,205.95");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=86.07,170.68");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=95.41,207.55");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=53.03,221.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=91.00,258.99");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=144.47,52.89");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=104.67,177.69");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=96.72,123.75");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=76.47,118.10");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=85.51,141.87");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=110.21,240.93");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=186.37,161.60");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=27.68,237.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=123.03,199.19");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=180.66,127.09");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=107.91,124.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=118.83,121.35");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=153.86,176.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=32.25,211.32");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=31.93,266.11");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=56.24,182.63");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=67.28,212.92");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=148.83,214.31");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=135.10,35.36");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=120.00,48.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=83.41,93.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=152.20,158.27");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=95.21,230.30");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=118.89,214.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=143.17,150.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=36.83,196.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=102.56,155.95");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=10.90,105.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=179.40,96.56");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=83.34,130.92");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=217.55,122.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=58.00,248.37");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=28.23,226.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=167.40,164.78");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=140.61,162.51");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=90.06,194.09");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=101.91,46.06");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=42.39,111.74");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=57.30,55.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=213.09,135.55");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=58.40,149.91");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=124.01,308.07");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=169.00,93.87");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=39.20,161.99");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=171.72,148.63");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=98.36,61.01");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=169.30,130.80");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=117.96,80.26");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=132.73,215.57");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=53.41,233.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=204.05,254.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=149.19,112.53");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=57.15,133.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=124.64,262.85");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=113.75,134.52");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=111.85,163.03");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=121.66,59.55");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=172.25,120.18");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=23.50,186.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=198.16,276.35");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=156.11,62.66");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=120.54,168.22");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=203.08,140.17");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=70.71,126.41");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=68.43,137.80");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=33.00,125.55");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=182.55,173.10");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=35.36,178.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=191.72,258.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=164.46,207.29");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=57.90,172.74");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=139.29,198.03");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=75.07,50.97");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=164.20,113.04");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=0.96,132.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=144.37,132.38");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=45.16,149.23");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=180.02,258.41");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=107.34,112.77");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=131.17,253.95");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=74.79,220.16");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=8.71,117.32");
    }

}

