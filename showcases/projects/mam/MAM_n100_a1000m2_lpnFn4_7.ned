
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_7
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=174.52,119.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=219.10,184.06");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=292.57,209.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=232.31,220.62");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=255.16,265.30");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=251.10,283.42");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=198.35,219.35");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=285.96,262.51");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=258.20,192.81");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=249.25,211.69");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=240.29,206.49");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=236.85,194.53");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=243.65,266.07");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=296.29,244.40");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=308.95,224.68");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=264.19,229.14");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=201.52,158.09");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=152.05,71.65");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=151.93,147.15");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=178.07,184.21");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=233.93,111.14");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=236.49,125.03");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=269.69,169.03");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=282.84,163.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=34.70,136.99");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=227.44,158.88");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=190.14,203.14");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=337.32,203.16");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=249.09,245.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=315.42,264.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=282.01,371.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=171.04,218.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=246.63,173.99");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=209.60,215.60");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=269.62,244.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=243.29,155.42");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=214.21,204.51");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=245.69,188.19");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=224.91,208.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=300.41,233.82");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=189.29,247.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=162.50,124.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=59.33,96.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=114.96,233.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=93.47,135.20");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=258.45,103.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=283.22,179.72");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=294.38,172.44");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=320.76,158.29");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=98.63,110.37");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=185.46,117.13");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=200.88,118.48");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=315.96,191.00");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=134.70,241.11");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=187.33,274.63");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=194.46,299.96");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=195.40,264.04");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=221.20,242.50");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=230.86,134.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=205.02,293.24");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=250.57,200.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=333.16,182.79");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=216.11,313.63");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=325.19,293.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=359.11,307.55");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=258.00,239.49");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=123.51,123.94");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=81.69,3.57");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=159.54,174.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=196.94,106.81");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=292.95,70.82");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=206.96,103.55");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=230.70,98.00");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=271.49,141.35");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=114.63,64.05");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=165.85,74.39");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=198.57,180.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=326.19,217.60");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=267.86,207.17");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=249.72,358.82");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=296.56,311.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=141.21,159.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=356.41,257.42");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=259.31,144.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=282.09,211.25");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=236.95,178.04");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=258.00,176.41");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=160.84,240.52");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=242.39,277.32");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=341.69,309.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=270.69,258.80");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=216.01,74.56");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=129.33,136.94");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=184.58,168.77");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=166.18,256.44");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=210.82,47.80");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=222.12,88.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=252.97,112.09");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=361.99,201.48");
    }

}

