
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_6
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
        @display("p=24.40,293.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=55.44,210.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=2.83,213.39");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=17.59,207.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=60.80,199.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=81.93,289.39");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=142.92,252.31");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=130.49,200.26");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=46.09,298.49");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=15.69,248.26");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=45.01,186.96");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=81.63,153.90");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=5.72,181.68");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=39.15,279.26");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=60.85,268.52");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=97.19,253.23");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=117.01,196.21");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=109.93,339.75");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=65.52,304.73");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=45.92,214.02");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=0.72,136.05");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=65.50,167.11");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=42.57,201.87");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,339.20");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=224.66,215.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=147.77,175.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=123.27,306.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=59.36,337.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=43.35,150.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=3.20,233.46");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=26.89,191.27");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=66.52,125.48");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=58.53,373.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=157.94,278.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=95.20,215.22");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=121.84,220.35");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=67.88,327.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=33.36,216.77");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=91.43,175.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=29.40,258.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=98.14,189.01");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=33.40,347.31");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=124.63,254.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=54.90,185.26");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=96.22,330.12");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=8.78,272.70");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=45.10,138.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=7.14,197.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=45.80,235.80");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=78.30,237.73");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=39.16,252.16");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=108.12,277.44");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=98.22,125.39");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=149.95,346.13");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=26.32,277.42");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=45.03,264.18");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=78.46,178.90");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=76.25,132.07");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=101.66,243.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=163.24,239.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=145.71,223.04");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=208.41,184.57");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=111.75,251.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=9.95,373.51");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=30.31,168.88");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=66.84,256.06");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=42.64,174.78");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=74.84,162.37");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=76.17,312.48");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=147.11,289.73");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=119.46,181.72");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=145.92,241.43");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=11.27,286.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=6.69,153.48");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=62.29,224.19");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=23.11,215.76");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=122.18,140.52");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=72.37,296.19");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=120.70,206.46");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=123.86,239.01");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=102.61,362.99");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=22.94,345.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=55.72,150.18");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=33.83,238.37");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=25.63,139.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=60.49,235.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=144.92,304.20");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=190.09,330.28");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=202.46,166.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=0.52,300.39");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=33.25,390.39");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=137.00,165.06");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=1.07,120.36");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=91.88,158.25");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=105.50,171.25");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=77.45,259.24");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=167.03,171.06");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=189.04,190.97");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=111.60,304.01");
    }

}

