
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_8
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
        @display("p=111.40,256.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=142.13,265.36");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=186.47,324.67");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=270.25,342.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=254.76,309.42");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=282.80,248.38");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=307.30,285.71");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=325.20,244.01");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=138.00,245.59");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=134.84,277.68");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=113.44,245.42");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=235.90,365.41");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=328.43,379.73");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=266.66,319.57");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=286.01,282.99");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=389.76,264.52");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=355.19,292.05");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=43.85,368.54");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=90.95,286.99");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=132.72,290.66");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=163.79,340.53");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=275.95,304.84");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=324.68,321.18");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=316.50,197.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=393.04,333.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=339.33,178.54");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=63.20,301.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=167.00,224.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=152.90,240.57");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=223.98,340.11");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=244.08,293.92");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=185.66,348.61");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=196.81,249.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=324.06,300.01");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=348.73,231.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=63.60,337.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=53.75,233.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=178.06,260.86");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=201.91,325.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=254.44,365.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=160.37,303.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=284.24,295.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=366.22,325.22");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=298.04,309.53");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=36.30,323.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=40.17,216.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=67.31,223.47");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=216.03,346.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=309.10,394.02");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=312.76,371.98");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=257.80,203.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=210.68,269.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=357.49,254.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=96.92,213.36");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=117.09,195.82");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=71.68,326.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=172.37,283.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=287.61,341.55");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=344.24,296.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=316.27,251.84");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=304.02,226.60");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=309.15,215.00");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=116.07,303.83");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=91.81,275.43");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=160.97,256.71");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=144.72,339.02");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=243.76,396.24");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=297.82,396.13");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=304.98,318.47");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=308.56,328.32");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=375.71,168.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=131.84,321.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=147.96,183.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=236.65,269.52");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=232.08,380.39");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=277.57,354.32");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=337.03,271.38");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=270.30,225.14");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=299.95,247.58");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=297.13,260.43");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=34.11,340.56");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=154.68,228.15");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=76.80,307.55");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=144.37,369.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=248.98,270.11");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=228.17,312.63");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=242.30,316.45");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=266.59,263.74");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=324.53,189.33");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=27.19,266.15");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=127.13,211.30");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=196.53,264.52");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=157.01,318.60");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=316.44,334.86");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=268.73,383.58");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=311.56,302.49");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=222.98,238.25");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=327.64,229.94");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=48.32,331.70");
    }

}

