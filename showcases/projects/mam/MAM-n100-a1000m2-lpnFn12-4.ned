
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-4
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
        @display("p=361.00,215.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=293.93,206.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=318.23,234.30");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=380.77,228.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=318.93,176.62");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=259.87,222.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=203.08,263.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=183.14,259.34");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=143.59,191.02");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=344.82,177.20");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=335.15,213.39");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=289.73,230.91");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=379.34,298.72");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=269.20,238.55");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=286.69,184.14");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=126.71,207.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=145.54,264.56");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=143.73,137.74");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=339.31,256.93");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=298.14,180.10");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=312.04,296.78");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=414.49,266.38");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=337.37,234.74");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=289.93,195.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=163.15,193.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=204.83,241.75");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=162.30,128.66");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=393.74,306.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=305.19,257.32");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=251.62,216.96");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=405.08,304.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=280.05,139.12");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=305.91,270.08");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=184.48,200.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=195.25,315.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=231.36,154.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=287.08,168.08");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=266.95,161.05");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=249.85,250.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=397.37,225.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=361.95,231.74");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=183.83,183.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=171.60,284.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=241.76,335.25");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=147.39,208.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=328.76,280.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=355.11,179.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=303.45,169.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=388.33,186.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=290.15,89.82");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=302.40,138.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=220.62,245.26");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=178.40,210.68");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=74.95,217.21");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=310.12,160.89");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=232.95,197.64");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=296.18,266.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=407.67,246.38");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=242.40,137.75");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=195.78,217.17");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=206.08,286.36");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=187.47,269.88");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=148.41,116.21");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=352.85,263.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=217.18,208.34");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=309.19,228.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=411.39,279.02");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=371.22,257.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=276.01,313.62");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=167.96,268.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=111.16,303.98");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=164.41,207.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=405.13,270.53");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=282.77,290.34");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=320.40,286.96");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=337.84,195.51");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=261.14,198.22");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=254.31,155.24");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=120.67,282.89");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=151.65,341.21");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=168.43,177.34");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=324.07,255.33");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=276.77,117.29");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=357.68,288.43");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=334.74,157.50");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=406.92,194.81");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=284.86,257.32");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=157.07,325.35");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=131.51,194.79");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=199.05,149.13");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=378.15,163.23");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=260.81,113.80");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=369.76,286.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=376.96,152.95");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=391.63,234.11");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=229.84,222.68");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=176.45,320.50");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=155.38,226.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=147.42,150.26");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=433.63,223.70");
    }

}

