
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_7
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=106.91,197.89");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=65.23,201.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=37.87,253.67");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=72.03,272.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=61.44,245.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=126.27,202.98");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=121.62,215.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=140.27,187.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=192.02,270.01");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=171.70,345.35");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=189.95,252.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=255.53,258.77");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=12.83,75.01");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=116.88,195.60");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=17.20,222.32");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=1.68,238.43");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=118.81,294.34");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=80.37,150.10");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=154.72,191.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=94.21,198.97");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=78.12,261.02");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=266.61,252.34");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=159.42,369.77");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=186.57,280.14");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=284.38,231.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=71.76,71.13");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=106.40,174.57");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=79.05,229.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=25.11,313.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=124.72,283.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=89.53,311.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=140.92,198.23");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=181.61,213.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=125.09,189.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=150.01,216.58");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=90.00,296.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=218.75,234.02");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=317.74,208.00");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=156.20,57.47");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=96.69,186.10");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=88.87,172.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=63.60,289.86");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=27.68,244.49");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=63.74,257.12");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=172.41,205.77");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=180.10,291.62");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=218.88,176.05");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=255.06,247.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=140.05,302.30");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=160.35,264.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=230.87,279.64");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=84.83,86.21");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=87.97,270.44");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=22.66,189.84");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=73.26,192.73");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=66.80,299.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=90.96,242.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=80.34,135.79");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=131.25,218.50");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=225.33,195.65");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=203.64,271.76");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=218.17,386.84");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=165.97,155.04");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=190.74,201.38");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=188.82,143.20");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=105.40,207.88");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=63.00,143.40");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=46.44,266.96");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=69.07,360.78");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=116.15,224.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=82.23,187.63");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=97.98,224.63");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=115.31,276.10");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=195.02,292.35");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=145.10,364.41");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=221.17,248.13");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=167.42,216.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=19.40,90.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=128.54,248.14");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=0.99,196.67");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=32.91,275.63");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=68.72,237.52");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=57.42,228.16");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=150.17,233.33");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=40.23,182.30");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=106.17,122.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=256.40,326.82");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=181.28,354.73");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=221.07,275.33");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=209.86,243.98");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=99.26,16.94");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=106.93,160.87");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=115.91,171.35");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=40.46,313.49");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=80.40,320.15");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=107.30,253.21");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=209.52,210.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=176.83,192.68");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=126.74,109.70");
    }

}

