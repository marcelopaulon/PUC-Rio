
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_6
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
        @display("p=147.60,83.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=94.97,155.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=159.35,146.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=165.54,137.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=122.99,178.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=110.14,203.23");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=98.81,198.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=152.17,254.91");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=136.72,263.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=92.62,263.87");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=118.65,292.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=91.06,282.99");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=78.03,280.55");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=108.49,238.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=74.47,259.14");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=42.91,309.71");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=31.62,355.89");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=15.72,305.18");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=28.08,243.44");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=21.59,186.76");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=34.81,127.89");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=53.43,119.09");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=57.72,88.22");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=92.42,109.07");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=27.27,62.14");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=149.58,66.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=174.93,113.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=139.64,134.11");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=168.46,123.97");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=115.97,152.29");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=152.22,123.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=105.20,225.51");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=167.57,211.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=234.07,256.49");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=113.28,274.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=65.35,248.25");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=96.84,310.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=65.36,280.10");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=192.97,279.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=103.82,259.73");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=49.57,282.37");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=4.77,357.53");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=25.66,253.39");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=81.85,309.88");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=54.41,145.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=86.72,123.12");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=84.34,24.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=48.93,75.01");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=110.34,113.05");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=112.04,64.37");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=91.15,73.62");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=142.29,93.41");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=125.51,127.82");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=241.40,80.52");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=153.26,113.34");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=196.61,171.09");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=76.64,123.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=231.56,283.06");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=89.34,302.11");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=28.85,293.44");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=186.95,331.92");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=5.94,247.09");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=52.67,291.90");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=118.39,248.99");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=94.95,166.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=55.66,391.77");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=93.93,378.33");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=9.84,379.43");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=26.49,268.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=6.42,201.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=104.71,90.94");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=46.30,128.80");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=15.09,77.08");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=99.08,48.49");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=132.48,108.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=243.11,96.68");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=73.73,160.36");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=148.91,141.01");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=217.03,111.87");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=84.08,167.04");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=168.05,201.38");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=80.62,216.62");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=148.28,229.94");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=214.61,206.30");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=179.43,274.11");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=172.00,312.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=75.54,348.99");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=99.00,353.87");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=132.89,175.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=62.55,268.36");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=82.43,338.08");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=26.67,366.36");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=65.64,303.98");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=57.82,193.29");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=11.50,191.39");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=46.75,94.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=88.01,34.68");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=84.70,95.84");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=113.58,85.79");
    }

}

