
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_2
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
        @display("p=170.17,260.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=217.60,250.34");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=253.06,236.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=266.89,259.94");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=295.53,263.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=341.98,259.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=265.80,324.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=246.01,349.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=332.71,359.67");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=321.68,325.18");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=359.77,263.01");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=343.99,273.80");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=167.02,245.97");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=211.99,340.01");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=238.38,216.12");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=206.79,207.09");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=274.68,287.60");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=309.29,240.89");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=285.00,230.85");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=248.53,259.75");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=259.46,274.46");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=297.33,353.58");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=377.87,355.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=370.99,270.86");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=371.50,221.85");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=153.09,344.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=203.69,258.37");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=224.76,267.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=308.28,268.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=304.91,290.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=287.71,204.34");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=375.27,302.47");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=292.10,307.28");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=251.96,329.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=323.98,367.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=340.27,348.67");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=285.03,256.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=367.84,293.15");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=52.33,323.02");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=182.72,227.69");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=265.17,177.91");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=254.33,248.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=187.11,264.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=352.18,297.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=379.18,253.11");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=236.82,336.60");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=235.88,367.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=260.42,292.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=316.67,297.30");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=391.53,260.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=380.65,276.54");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=81.02,318.09");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=225.56,314.79");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=311.85,225.60");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=249.79,209.84");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=325.21,232.70");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=265.02,234.36");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=319.15,356.18");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=287.03,339.95");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=218.82,357.91");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=339.45,330.70");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=317.39,313.14");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=388.31,309.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=304.87,318.98");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=48.49,343.81");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=102.54,209.43");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=190.08,319.47");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=235.25,277.51");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=238.93,235.54");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=325.22,246.20");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=342.35,305.44");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=179.98,336.73");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=197.95,285.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=397.49,353.92");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=366.49,246.03");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=362.63,206.03");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=327.72,273.21");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=97.96,269.88");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=105.12,230.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=212.58,279.69");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=326.39,191.60");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=235.27,197.75");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=356.20,193.51");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=298.47,184.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=243.97,384.73");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=222.32,383.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=356.69,337.44");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=369.15,310.91");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=351.99,219.38");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=340.67,289.22");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=89.00,299.20");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=142.39,339.45");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=170.49,168.48");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=189.13,196.93");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=263.45,209.12");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=316.23,336.18");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=369.97,322.71");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=327.16,316.17");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=201.05,351.96");
    }

}

