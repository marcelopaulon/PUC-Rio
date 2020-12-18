
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-0
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
        @display("p=287.00,122.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=305.02,208.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=278.64,186.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=273.21,123.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=281.52,81.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=270.18,142.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=276.96,205.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=268.01,199.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=257.20,235.30");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=327.47,55.48");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=261.30,281.82");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=223.99,203.18");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=218.42,160.38");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=316.59,40.34");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=176.70,155.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=278.02,233.94");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=274.64,166.36");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=336.37,183.48");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=286.25,63.48");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=344.49,191.93");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=280.16,275.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=298.10,143.26");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=356.87,52.93");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=340.92,75.10");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=288.97,287.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=289.32,203.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=232.27,290.14");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=268.72,181.79");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=374.94,210.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=297.93,191.03");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=219.66,187.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=283.95,177.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=286.72,165.04");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=210.53,137.69");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=233.79,187.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=238.24,216.63");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=231.87,41.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=215.70,249.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=329.70,160.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=234.58,151.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=290.67,104.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=319.77,168.39");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=237.09,138.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=255.98,148.03");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=184.25,219.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=335.15,103.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=327.31,280.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=285.41,153.29");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=238.09,54.40");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=308.95,20.56");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=311.72,143.66");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=301.93,283.96");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=251.51,219.87");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=211.87,218.63");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=302.67,36.15");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=396.96,175.74");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=250.17,176.87");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=266.44,132.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=228.84,89.38");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=236.89,80.90");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=308.22,233.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=181.29,247.57");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=242.92,232.24");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=231.45,177.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=388.40,249.04");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=283.21,142.37");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=353.68,135.93");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=215.84,39.09");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=312.87,178.53");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=315.26,214.44");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=204.70,174.82");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=276.42,261.85");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=253.51,131.78");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=371.08,283.28");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=250.14,113.91");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=334.52,197.31");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=245.32,27.66");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=301.67,175.29");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=250.48,278.99");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=352.68,153.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=242.89,247.46");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=317.75,80.57");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=293.93,224.68");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=318.38,190.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=270.52,156.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=274.81,69.42");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=207.58,89.61");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=189.55,238.83");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=277.38,223.06");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=288.54,238.91");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=255.89,101.38");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=338.59,168.31");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=309.58,255.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=264.65,108.30");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=254.55,8.83");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=225.36,229.20");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=311.73,200.27");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=181.49,202.67");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=211.19,203.29");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=302.74,105.10");
    }

}

