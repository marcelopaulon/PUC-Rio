
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_0
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=77.08,176.62");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=103.68,218.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=94.06,215.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=107.93,169.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=181.84,147.48");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=235.84,199.02");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=226.62,134.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=280.63,108.41");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=279.89,89.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=305.17,84.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=331.52,90.84");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=340.67,63.41");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=270.54,71.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=259.26,90.80");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=193.08,27.34");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=172.82,57.68");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=129.15,44.21");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=152.71,56.81");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=139.27,34.72");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=147.60,72.40");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=229.45,81.54");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=215.04,114.04");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=144.44,166.37");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=150.21,219.99");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=111.00,80.13");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=146.84,136.91");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=98.04,302.40");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=26.97,193.66");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=170.94,199.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=193.40,157.44");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=253.69,266.77");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=242.19,54.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=337.18,137.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=370.39,82.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=244.78,35.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=279.78,154.17");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=363.01,47.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=215.77,137.91");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=253.23,14.57");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=222.75,102.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=118.88,34.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=200.97,112.75");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=142.63,20.68");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=212.81,49.53");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=216.84,66.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=209.20,75.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=235.72,111.72");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=174.04,244.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=107.44,196.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=11.42,101.69");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=62.60,91.83");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=80.70,296.73");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=120.11,223.13");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=70.26,225.90");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=128.92,156.88");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=313.02,188.91");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=314.91,135.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=346.57,153.91");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=299.98,120.96");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=288.55,179.46");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=357.99,37.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=249.57,79.63");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=334.98,53.70");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=293.00,164.30");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=175.97,72.13");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=227.20,71.23");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=142.02,52.37");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=173.28,110.87");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=91.43,111.54");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=205.43,90.32");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=242.29,69.52");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=159.28,132.25");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=153.72,156.85");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=166.45,228.68");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=47.30,109.29");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=143.83,240.78");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=103.03,147.32");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=132.49,143.29");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=137.21,187.87");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=150.60,118.06");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=246.73,180.95");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=240.08,215.04");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=189.53,121.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=268.32,60.76");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=337.43,116.21");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=345.46,36.06");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=255.89,30.51");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=209.04,32.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=238.79,131.37");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=177.86,29.86");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=134.38,4.46");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=112.01,45.42");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=167.93,18.71");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=74.51,6.24");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=197.76,63.65");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=184.60,55.68");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=200.04,101.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=220.81,166.34");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=115.14,296.29");
    }

}

