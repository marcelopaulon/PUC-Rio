
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-5
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
        @display("p=257.00,108.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=245.48,135.31");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=227.42,147.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=264.11,214.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=327.03,232.19");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=357.60,259.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=302.75,288.02");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=345.77,289.13");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=352.53,278.01");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=238.53,171.82");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=248.92,165.96");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=247.99,115.20");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=312.81,205.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=323.19,173.34");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=399.70,270.98");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=315.65,283.70");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=410.18,363.08");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=293.23,305.22");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=303.09,34.92");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=255.27,85.07");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=254.01,150.81");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=200.13,255.14");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=258.74,184.80");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=419.88,263.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=364.66,217.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=396.83,258.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=273.14,335.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=339.94,79.64");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=284.29,91.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=223.68,60.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=263.48,195.27");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=310.54,300.31");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=411.84,296.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=341.08,236.50");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=271.63,288.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=351.94,337.32");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=248.55,93.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=292.09,72.74");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=222.24,176.00");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=298.59,235.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=326.33,323.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=325.16,254.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=290.77,324.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=284.31,335.86");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=315.71,320.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=187.49,75.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=236.49,86.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=289.21,134.02");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=290.20,249.83");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=323.75,268.21");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=446.94,276.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=262.28,352.73");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=370.90,240.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=334.92,289.37");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=350.97,126.27");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=223.85,114.11");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=159.17,136.28");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=243.89,232.09");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=346.16,250.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=337.08,214.56");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=334.24,203.19");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=316.15,369.24");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=274.57,223.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=263.66,40.61");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=265.38,91.97");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=284.61,164.61");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=186.89,188.16");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=298.53,173.14");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=428.32,227.83");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=231.72,337.39");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=329.16,298.26");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=393.00,224.95");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=227.12,96.21");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=333.90,136.79");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=149.87,202.62");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=265.85,301.04");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=348.29,204.97");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=310.71,252.36");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=215.24,270.73");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=410.97,268.43");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=379.42,327.88");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=184.52,157.37");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=200.23,123.92");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=293.42,110.84");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=211.28,258.81");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=393.65,243.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=336.06,270.08");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=250.62,252.26");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=369.01,287.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=338.87,331.95");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=295.16,121.09");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=213.09,190.27");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=223.90,48.70");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=228.08,235.28");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=255.97,233.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=306.41,315.85");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=387.17,251.61");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=383.09,269.94");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=348.55,299.62");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=270.34,63.05");
    }

}

