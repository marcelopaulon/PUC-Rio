
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn1-6
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
        @display("p=176.00,190.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=96.27,169.47");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=161.08,129.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=139.33,209.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=140.15,195.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=223.87,217.33");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=284.90,200.86");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=303.95,216.52");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=290.65,212.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=239.86,276.35");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=228.37,286.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=287.90,330.78");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=293.20,314.98");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=345.23,327.00");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=370.01,354.60");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=364.79,363.89");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=356.65,349.16");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=285.27,387.30");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=239.24,389.47");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=246.74,366.10");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=276.08,398.07");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=231.18,323.89");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=170.23,373.00");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=169.35,315.65");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=148.31,355.26");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=134.21,333.11");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=142.56,321.48");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=146.03,336.31");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=202.47,381.08");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=184.19,376.82");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=206.86,356.39");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=239.66,341.36");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=252.54,350.64");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=286.11,351.72");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=269.80,331.24");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=259.59,324.90");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=219.19,345.23");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=206.30,344.25");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=267.00,352.35");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=196.93,392.01");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=256.43,281.27");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=216.11,366.92");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=192.86,366.78");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=191.48,267.75");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=207.96,270.60");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=240.20,259.82");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=194.06,316.81");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=130.91,289.07");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=172.02,340.88");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=223.31,385.93");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=269.49,389.09");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=344.73,366.32");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=331.18,387.11");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=254.57,236.32");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=296.83,303.70");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=240.21,351.96");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=291.13,278.23");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=280.68,297.10");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=304.09,258.52");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=316.52,279.64");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=266.68,139.89");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=290.98,114.45");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=304.92,142.68");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=288.85,60.13");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=206.22,60.88");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=208.34,78.89");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=147.81,116.12");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=115.91,64.12");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=162.59,41.92");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=147.76,32.41");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=96.39,95.80");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=121.49,105.68");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=137.76,79.74");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=55.32,70.50");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=42.30,36.80");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=104.04,66.68");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=86.07,70.50");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=78.36,64.02");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=76.57,134.92");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=174.94,120.45");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=159.71,71.29");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=79.09,9.84");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=68.91,48.45");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=60.85,0.45");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=63.11,24.69");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=32.78,13.68");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=53.26,8.72");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=26.68,34.23");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=19.41,4.56");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=12.66,19.01");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=91.18,22.88");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=106.52,98.83");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=132.61,121.12");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=109.88,48.53");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=66.57,118.23");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=147.52,163.89");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=181.66,256.80");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=141.43,305.74");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=152.76,210.46");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=176.61,298.86");
    }

}

