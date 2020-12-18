
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-3
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
        @display("p=12.00,280.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=99.73,257.10");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=102.08,225.78");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=170.49,180.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=152.05,243.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=129.59,277.05");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=121.48,181.29");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=173.27,133.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=139.79,45.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=126.62,16.23");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=144.53,12.79");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=217.27,53.20");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=191.69,51.46");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=210.43,89.92");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=298.43,115.84");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=328.37,95.76");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=335.81,1.11");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=323.95,68.81");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=265.47,8.71");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=269.82,48.96");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=350.42,15.81");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=376.65,61.27");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=386.09,43.32");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=303.51,152.60");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=338.89,174.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=85.20,214.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=69.23,300.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=100.61,206.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=219.13,116.86");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=216.59,207.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=113.19,333.66");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=113.46,171.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=158.06,71.99");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=117.35,39.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=67.90,48.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=87.42,5.29");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=218.93,24.14");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=185.26,108.47");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=250.60,6.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=398.22,121.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=242.92,54.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=289.78,8.30");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=302.04,70.78");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=232.66,21.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=298.50,135.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=375.05,21.51");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=370.39,81.71");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=394.38,25.68");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=257.11,179.10");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=334.22,273.73");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=25.26,311.13");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=86.46,268.53");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=110.00,243.26");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=188.40,247.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=229.07,275.06");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=128.09,194.16");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=88.27,167.71");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=209.13,188.31");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=139.78,75.32");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=165.00,14.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=118.96,27.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=245.08,41.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=230.05,88.11");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=228.51,60.38");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=305.44,84.34");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=253.25,74.93");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=335.38,25.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=256.66,118.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=319.47,21.22");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=191.44,70.62");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=288.68,34.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=314.03,138.75");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=388.28,139.86");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=315.76,181.37");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=314.77,202.01");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=29.99,330.07");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=50.02,303.16");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=42.94,232.62");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=77.68,203.21");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=167.58,255.60");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=135.00,209.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=101.75,168.25");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=191.37,154.41");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=121.53,114.67");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=56.21,16.45");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=174.78,28.43");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=275.36,92.55");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=105.64,55.23");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=243.20,112.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=280.69,131.71");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=345.71,91.93");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=252.90,16.96");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=303.54,32.12");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=192.19,11.30");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=267.54,64.48");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=304.71,0.46");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=371.17,38.44");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=382.15,94.92");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=311.03,160.07");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=349.75,182.83");
    }

}

