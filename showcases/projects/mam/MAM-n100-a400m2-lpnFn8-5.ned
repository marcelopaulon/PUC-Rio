
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-5
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
        @display("p=72.00,47.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=70.41,78.42");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=49.07,98.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=97.10,165.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=125.60,157.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=119.95,234.54");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=35.52,201.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=63.14,236.81");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=53.27,272.06");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=19.17,211.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=35.41,212.14");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=86.21,296.70");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=15.29,358.75");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=66.72,60.17");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=57.65,79.32");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=98.73,117.10");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=88.89,180.86");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=168.03,235.12");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=129.05,213.97");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=29.43,175.84");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=76.49,261.69");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=68.35,275.53");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=58.76,169.26");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=25.89,165.40");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=131.13,241.38");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=14.94,369.75");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=91.11,14.26");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=84.76,105.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=5.38,23.43");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=136.82,160.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=206.15,186.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=154.04,322.58");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=42.42,166.75");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=24.89,308.53");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=14.80,190.44");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=32.49,261.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=11.78,149.69");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=91.81,316.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=5.06,362.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=101.76,18.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=125.10,57.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=98.78,151.46");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=133.68,99.17");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=143.33,109.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=181.90,189.05");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=46.97,214.24");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=89.68,212.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=91.96,257.42");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=67.01,292.80");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=120.56,258.69");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=79.86,252.21");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=85.72,390.34");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=85.99,55.03");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=51.90,17.58");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=64.33,90.30");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=78.43,158.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=185.88,164.37");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=129.01,228.19");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=79.53,133.69");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=56.62,289.40");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=5.22,254.00");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=26.21,271.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=73.37,238.46");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=52.47,352.35");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=20.58,298.76");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=82.24,42.44");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=17.16,11.28");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=67.79,1.76");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=72.94,221.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=180.36,100.72");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=160.41,192.68");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=35.40,187.45");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=8.71,243.42");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=79.99,272.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=38.19,147.32");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=35.79,227.04");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=108.05,255.07");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=43.19,383.45");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=73.49,117.43");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=80.65,81.61");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=8.12,82.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=171.86,123.62");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=158.18,164.98");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=106.20,173.41");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=69.58,173.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=9.52,204.07");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=36.73,275.76");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=99.69,194.50");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=53.86,114.67");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=103.48,304.53");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=36.01,351.86");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=95.96,42.29");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=111.89,85.72");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=39.03,46.10");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=61.67,246.88");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=142.71,136.08");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=116.98,220.43");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=46.96,249.38");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=133.87,201.47");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=20.44,336.50");
    }

}

