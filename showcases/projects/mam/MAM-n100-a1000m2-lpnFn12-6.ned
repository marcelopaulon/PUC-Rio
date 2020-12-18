
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-6
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
        @display("p=381.00,192.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=347.38,166.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=424.27,115.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=375.96,117.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=314.82,144.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=362.51,70.53");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=341.86,38.54");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=323.25,23.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=355.36,23.67");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=388.81,103.66");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=274.03,178.75");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=451.62,208.59");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=375.35,138.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=289.43,187.88");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=372.95,89.39");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=339.85,98.61");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=420.72,2.93");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=380.40,16.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=452.86,222.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=320.96,161.28");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=422.53,88.84");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=389.79,125.33");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=287.28,102.86");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=377.60,47.87");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=272.20,91.62");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=379.65,36.68");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=328.39,13.15");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=406.97,274.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=371.06,169.58");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=344.87,66.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=325.86,78.28");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=325.26,204.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=407.03,130.23");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=330.17,126.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=251.78,19.86");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=387.35,57.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=400.77,140.10");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=349.91,120.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=485.66,45.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=370.41,206.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=410.52,150.26");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=355.01,61.04");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=413.57,21.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=354.45,46.32");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=390.59,8.56");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=349.59,186.84");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=339.02,138.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=442.13,115.32");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=408.20,79.14");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=305.71,231.99");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=321.02,3.80");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=262.07,62.69");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=311.73,25.30");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=283.20,25.86");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=439.58,137.82");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=360.93,134.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=431.52,177.80");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=453.74,119.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=315.01,193.97");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=306.79,40.81");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=292.67,40.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=336.77,47.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=373.43,28.72");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=412.99,218.69");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=440.06,189.22");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=424.50,104.07");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=420.73,141.43");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=299.39,156.29");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=354.12,102.08");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=298.95,95.47");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=278.70,58.76");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=378.31,4.46");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=291.42,162.59");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=378.85,147.86");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=465.33,204.24");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=330.43,36.43");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=281.30,146.61");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=378.06,73.27");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=248.21,56.91");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=319.15,39.67");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=409.05,47.86");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=458.70,177.86");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=287.74,124.89");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=396.40,40.04");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=420.64,172.95");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=318.02,109.71");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=432.39,29.95");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=306.00,62.45");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=335.77,71.84");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=306.72,7.12");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=392.23,195.35");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=416.38,230.04");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=478.40,140.89");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=346.56,82.12");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=357.18,152.42");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=279.74,71.15");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=306.47,50.94");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=366.50,44.21");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=451.14,10.69");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=353.75,269.24");
    }

}

