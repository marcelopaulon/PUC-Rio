
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-4
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
        @display("p=363.00,75.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=381.41,65.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=378.86,88.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=393.17,126.63");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=399.08,141.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=387.83,191.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=374.66,196.14");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=383.51,204.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=310.03,218.82");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=358.17,118.86");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=342.80,41.27");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=340.89,122.25");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=393.52,95.19");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=368.42,137.85");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=326.56,223.07");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=363.63,286.21");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=369.76,167.25");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=354.15,226.74");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=392.47,114.66");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=366.56,105.08");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=341.23,64.23");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=363.44,180.92");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=368.30,116.57");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=349.43,244.91");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=336.97,262.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=329.99,164.33");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=268.47,174.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=365.77,89.80");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=310.59,42.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=290.15,133.34");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=352.86,152.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=385.18,220.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=330.36,240.97");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=361.85,205.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=320.46,132.50");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=302.81,210.79");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=304.04,78.32");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=370.30,67.81");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=323.09,77.92");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=381.34,159.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=305.11,141.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=383.99,182.17");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=394.92,173.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=341.99,189.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=350.81,273.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=341.80,75.78");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=329.03,89.62");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=396.51,105.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=307.48,110.92");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=371.78,209.98");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=365.01,128.01");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=329.35,199.67");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=397.19,203.51");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=254.96,267.94");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=341.79,144.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=366.19,21.50");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=382.61,43.22");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=342.69,154.95");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=313.31,158.69");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=360.82,272.39");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=392.65,289.23");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=377.58,297.91");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=242.90,252.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=334.82,106.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=393.16,62.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=289.70,85.81");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=378.02,130.36");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=380.26,230.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=311.00,170.23");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=356.81,193.97");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=374.26,179.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=255.15,195.71");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=375.37,56.26");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=354.07,136.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=327.51,148.50");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=378.96,113.50");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=358.00,164.59");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=399.80,189.03");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=334.93,231.95");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=345.56,231.97");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=241.47,215.68");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=353.98,84.37");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=392.19,32.17");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=314.97,122.27");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=381.89,145.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=399.15,78.81");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=396.94,230.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=307.99,242.59");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=289.87,183.00");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=297.45,160.59");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=318.51,60.07");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=379.86,28.05");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=342.13,92.53");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=328.88,114.54");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=350.02,110.50");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=381.84,269.64");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=309.41,230.19");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=396.52,261.95");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=274.05,265.74");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=275.81,96.42");
    }

}

