
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_0
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
        @display("p=181.31,347.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=151.98,319.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=170.03,340.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=219.05,363.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=207.94,362.39");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=177.54,396.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=245.86,347.75");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=223.57,333.22");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=198.62,370.53");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=188.94,318.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=175.84,293.03");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=218.40,219.79");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=31.48,348.27");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=247.77,376.51");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=165.86,370.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=155.14,295.65");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=158.14,352.90");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=216.44,344.01");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=111.41,327.33");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=268.26,365.01");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=295.37,294.35");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=193.38,288.14");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=179.66,252.94");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=154.37,261.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=257.58,231.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=64.34,216.37");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=252.42,287.13");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=236.39,361.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=211.14,325.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=208.43,312.44");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=277.19,342.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=198.26,312.19");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=220.96,298.33");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=233.75,272.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=220.94,284.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=122.55,362.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=128.69,230.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=221.41,231.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=76.07,258.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=243.28,310.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=93.19,331.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=135.32,275.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=132.97,370.56");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=187.67,270.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=190.88,394.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=253.49,341.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=308.04,338.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=154.86,340.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=130.91,326.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=146.58,247.86");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=165.35,247.95");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=109.93,295.24");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=207.52,255.72");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=219.39,374.60");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=202.14,340.00");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=166.25,385.79");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=171.09,321.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=142.50,382.83");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=231.92,338.77");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=230.98,388.82");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=128.91,302.02");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=171.03,259.84");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=109.64,277.93");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=223.37,248.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=70.53,352.50");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=126.09,380.83");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=149.45,359.28");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=258.35,310.27");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=148.86,393.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=196.88,360.64");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=185.53,303.31");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=201.99,270.25");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=137.14,309.46");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=270.10,398.45");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=157.13,284.15");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=181.44,279.51");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=216.65,179.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=93.02,343.01");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=107.26,397.72");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=116.51,372.50");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=252.62,324.87");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=227.80,351.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=216.14,388.83");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=190.64,334.23");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=259.98,373.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=280.49,258.41");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=248.66,360.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=168.34,286.14");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=211.20,293.82");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=196.71,211.59");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=78.82,275.80");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=272.10,383.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=134.94,252.12");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=93.99,392.29");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=223.08,272.67");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=287.88,386.53");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=80.39,392.25");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=315.98,295.01");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=283.93,328.95");
    }

}

