
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-9
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
        @display("p=269.00,401.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=253.07,402.83");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=192.91,351.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=186.35,392.17");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=205.77,381.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=199.04,413.61");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=159.30,460.89");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=76.76,483.86");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=6.35,512.55");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=248.82,322.12");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=285.10,497.21");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=141.77,362.87");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=149.43,346.45");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=288.36,367.75");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=204.86,346.68");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=151.76,513.38");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=41.29,512.93");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=22.87,481.11");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=253.98,425.19");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=276.59,460.97");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=166.35,346.64");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=262.60,418.31");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=267.03,373.72");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=177.31,476.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=135.30,397.81");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=48.06,400.49");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=11.61,433.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=290.08,392.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=238.90,393.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=197.44,336.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=185.80,403.43");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=219.09,390.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=141.97,443.78");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=171.06,428.40");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=118.41,398.78");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=13.94,533.11");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=332.13,426.48");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=335.32,436.69");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=117.88,330.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=131.26,387.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=211.35,368.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=193.62,384.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=95.25,530.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=117.91,554.88");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=67.34,490.38");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=201.66,457.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=224.59,453.00");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=146.44,330.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=226.27,419.09");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=251.27,438.13");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=178.42,435.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=161.97,484.70");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=24.12,416.03");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=47.81,598.11");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=223.85,357.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=197.02,477.98");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=192.25,326.03");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=263.70,347.37");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=249.14,451.65");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=263.84,461.44");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=163.72,444.08");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=119.33,485.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=95.77,513.16");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=276.63,370.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=341.90,371.70");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=238.24,300.86");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=171.69,369.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=225.72,373.45");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=231.38,461.36");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=187.35,500.37");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=42.27,473.64");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=42.19,528.67");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=250.73,389.75");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=303.93,481.78");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=181.11,336.65");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=121.15,428.88");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=127.07,410.08");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=208.75,403.38");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=179.77,460.75");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=59.22,471.08");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=14.77,520.26");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=260.57,386.10");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=258.37,356.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=231.02,402.37");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=174.01,392.01");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=195.99,290.02");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=147.54,400.48");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=173.60,449.13");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,393.51");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=1.99,442.39");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=287.27,448.16");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=296.62,347.80");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=282.02,385.90");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=208.51,428.69");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=238.88,326.75");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=127.12,469.19");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=154.81,448.80");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=123.25,525.40");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=9.68,483.09");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=323.25,374.38");
    }

}

