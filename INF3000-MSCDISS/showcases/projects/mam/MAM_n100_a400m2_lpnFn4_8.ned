
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_8
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
        @display("p=13.12,104.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=25.00,131.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=73.44,79.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=157.87,120.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=122.80,157.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=32.28,197.66");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=26.62,208.98");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=93.25,141.86");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=63.03,110.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=58.12,100.30");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=0.39,116.09");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=40.99,29.75");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=41.39,112.70");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=92.87,153.79");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=139.17,223.55");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=162.50,135.89");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=170.29,112.39");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=128.89,190.18");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=113.81,234.14");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=23.44,231.37");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=12.79,230.72");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=13.38,220.16");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=50.37,252.46");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=59.11,247.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=61.92,134.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=58.23,145.63");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=94.95,112.51");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=25.13,96.78");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=202.67,130.39");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=95.70,200.98");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=63.22,197.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=13.96,124.58");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=107.21,170.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=105.36,191.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=76.48,102.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=45.27,148.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=79.70,49.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=71.25,35.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=166.83,184.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=99.96,210.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=106.29,129.13");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=175.37,94.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=207.22,205.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=109.49,264.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=36.92,282.52");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=36.09,213.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=100.81,252.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=77.97,287.57");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=125.47,231.41");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=35.31,102.69");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=21.97,111.07");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=29.88,120.61");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=66.12,59.80");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=152.40,135.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=178.67,204.02");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=54.97,218.93");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=84.33,148.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=77.24,161.14");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=91.43,177.66");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=55.08,84.36");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=47.30,179.39");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=87.63,40.29");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=43.67,43.80");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=137.27,115.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=109.34,138.87");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=143.00,107.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=94.88,86.15");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=145.27,182.09");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=169.67,254.33");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=42.17,165.60");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=15.80,189.80");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=24.31,172.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=107.88,328.60");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=45.80,228.48");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=159.34,167.84");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=59.83,20.17");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=54.52,205.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=86.09,67.05");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=178.56,127.94");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=169.72,146.61");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=115.22,185.65");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=94.04,224.97");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=177.31,193.09");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=31.83,144.10");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=80.31,131.53");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=0.90,104.77");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=21.07,2.95");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=32.72,89.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=67.68,157.25");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=126.08,141.71");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=119.72,123.22");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=206.79,81.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=75.60,227.85");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=87.51,243.42");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=6.99,252.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=36.26,233.21");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=72.17,263.54");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=14.39,329.96");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=79.34,256.13");
    }

}

