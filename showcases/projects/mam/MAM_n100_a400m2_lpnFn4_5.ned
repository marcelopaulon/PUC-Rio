
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_5
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=159.33,167.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.36,145.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=129.67,89.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=109.31,27.61");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=113.57,48.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=193.09,19.92");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=149.12,11.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=183.05,32.97");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=216.29,88.37");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=296.08,122.28");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=321.92,115.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=234.65,130.04");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=232.23,187.55");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=265.40,157.24");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=282.12,187.17");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=316.56,145.36");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=371.37,107.51");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=387.51,101.82");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=352.84,92.53");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=391.08,69.85");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=324.91,32.75");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=356.30,43.13");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=357.37,75.71");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=336.67,179.05");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=90.03,73.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=78.58,205.97");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=144.51,188.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=134.37,76.51");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=112.46,107.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=152.30,76.18");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=217.92,108.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=128.84,58.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=246.29,91.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=236.69,74.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=370.64,122.28");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=278.36,146.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=165.90,89.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=202.00,215.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=260.47,142.32");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=197.56,190.21");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=275.52,78.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=390.03,159.89");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=391.54,111.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=377.26,89.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=370.68,80.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=345.64,30.43");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=335.32,18.50");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=378.88,170.68");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=304.02,186.86");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=146.15,139.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=194.46,154.87");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=107.53,227.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=161.55,13.65");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=60.12,110.65");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=187.46,99.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=249.65,1.42");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=136.23,5.08");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=206.76,78.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=268.69,36.98");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=216.76,156.44");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=318.72,128.16");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=234.38,153.43");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=183.40,169.29");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=229.54,199.19");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=343.25,206.31");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=298.24,100.85");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=363.10,130.37");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=383.72,79.28");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=311.02,66.79");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=324.97,65.01");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=249.70,19.28");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=282.18,102.04");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=369.13,1.26");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=382.45,265.01");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=112.33,127.52");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=175.21,222.47");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=186.55,87.95");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=117.51,97.00");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=169.85,1.63");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=81.51,139.25");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=176.75,65.67");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=151.21,111.79");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=238.14,6.82");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=169.77,132.23");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=242.37,173.92");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=357.57,142.60");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=288.65,150.62");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=185.69,244.45");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=326.84,135.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=272.51,173.28");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=319.96,171.11");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=366.43,158.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=352.92,106.76");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=266.21,129.62");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=392.73,5.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=329.99,45.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=390.09,136.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=389.70,26.27");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=335.45,90.22");
    }

}

