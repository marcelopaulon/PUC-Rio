
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_5
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=185.37,120.03");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=176.95,82.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=141.05,87.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=156.57,4.81");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=186.66,37.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=176.95,50.56");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=115.57,124.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=131.46,59.77");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=67.25,7.94");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=215.05,36.67");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=191.82,52.97");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=156.35,92.18");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=65.67,19.62");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=145.89,118.75");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=135.11,43.92");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=107.17,37.44");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=167.71,150.66");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=26.32,106.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=208.97,122.28");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=166.47,85.99");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=183.09,93.52");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=155.48,73.23");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=207.72,57.64");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=88.42,39.23");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=85.00,159.93");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=207.91,101.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=19.66,133.14");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=239.70,67.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=227.98,94.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=180.64,107.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=235.53,54.92");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=251.72,94.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=260.33,5.72");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=122.67,180.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=131.13,71.97");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=39.35,46.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=123.23,193.99");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=246.83,49.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=109.34,94.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=158.21,24.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=207.24,23.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=200.84,10.25");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=65.00,72.38");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=171.86,33.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=79.90,92.04");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=161.34,184.25");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=222.87,23.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=87.46,21.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=120.19,23.70");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=165.17,133.84");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=147.22,39.33");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=110.03,113.74");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=177.97,134.07");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=60.53,166.46");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=102.16,160.77");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=250.80,69.65");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=181.79,19.94");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=221.35,5.51");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=255.60,16.01");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=178.71,63.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=82.13,112.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=117.47,46.50");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=17.01,87.88");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=220.66,165.56");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=237.17,14.64");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=94.34,80.06");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=86.34,1.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=282.73,47.13");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=211.07,81.28");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=208.41,157.82");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=82.33,60.23");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=91.66,50.41");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=191.44,161.37");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=266.92,83.81");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=156.82,118.22");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=122.64,3.72");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=170.57,100.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=166.15,52.72");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=105.00,208.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=126.27,32.05");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=39.80,166.51");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=180.20,153.08");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=238.39,35.99");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=151.28,104.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=167.75,1.53");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=199.02,129.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=253.09,107.83");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=29.02,149.85");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=125.27,158.80");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=96.76,90.04");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=205.07,206.81");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=158.28,163.92");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=110.10,80.36");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=202.71,70.23");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=130.11,11.62");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=191.97,72.96");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=100.81,124.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=83.82,80.79");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=71.94,182.05");
    }

}

