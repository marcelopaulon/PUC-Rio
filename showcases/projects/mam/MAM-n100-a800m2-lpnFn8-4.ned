
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-4
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
        @display("p=439.00,270.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=451.22,305.38");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=453.86,322.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=422.26,290.10");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=389.49,277.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=315.03,238.30");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=303.97,183.98");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=400.59,168.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=386.52,212.70");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=408.46,161.39");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=504.35,182.53");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=475.31,133.08");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=516.10,196.40");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=424.99,258.70");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=379.39,238.09");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=469.31,337.00");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=366.18,225.52");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=376.21,216.10");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=367.58,243.71");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=289.46,180.27");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=370.64,207.06");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=453.65,195.13");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=439.61,120.53");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=464.59,116.07");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=484.76,89.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=520.49,214.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=492.59,292.09");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=431.77,394.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=391.48,318.30");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=404.42,365.33");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=306.89,271.91");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=254.88,270.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=247.49,173.18");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=395.16,247.59");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=306.61,162.91");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=497.17,169.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=448.45,167.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=491.37,156.66");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=557.99,121.84");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=514.48,287.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=414.77,310.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=361.21,322.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=435.33,336.63");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=351.56,281.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=346.96,169.71");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=257.79,167.24");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=406.36,207.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=408.73,291.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=387.05,79.30");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=497.02,140.21");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=451.61,146.27");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=545.40,186.49");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=486.91,239.43");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=479.27,270.59");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=524.71,367.60");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=383.91,296.49");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=371.63,339.88");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=320.11,226.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=327.41,152.21");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=359.32,141.21");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=294.65,239.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=407.70,227.52");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=575.82,173.88");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=430.15,101.29");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=546.68,196.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=436.81,308.40");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=472.53,288.41");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=429.60,409.97");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=458.44,337.61");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=436.86,244.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=310.47,251.78");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=273.61,190.27");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=353.42,132.25");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=421.01,189.18");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=327.13,122.21");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=512.52,165.62");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=569.81,136.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=531.80,235.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=406.60,183.88");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=395.46,356.11");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=423.90,318.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=457.30,286.29");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=445.30,341.24");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=291.67,213.81");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=328.55,259.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=425.49,168.87");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=395.43,225.89");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=454.79,112.86");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=442.22,189.62");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=495.38,49.80");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=536.50,136.77");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=423.64,274.44");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=408.79,323.65");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=464.46,268.91");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=410.11,256.31");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=371.10,269.37");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=284.02,221.39");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=303.09,218.55");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=391.06,186.01");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=380.09,226.22");
    }

}

