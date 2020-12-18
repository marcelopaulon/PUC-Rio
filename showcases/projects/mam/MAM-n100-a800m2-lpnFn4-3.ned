
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-3
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
        @display("p=11.00,330.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=71.83,254.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=69.70,242.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=31.56,252.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=50.65,268.76");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=41.16,293.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=2.37,274.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=49.89,283.23");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=25.23,333.87");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=94.53,402.93");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=166.77,379.92");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=93.84,325.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=82.09,408.75");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=78.84,324.79");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=58.73,339.26");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=3.30,350.75");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=21.77,375.96");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=64.17,399.31");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=77.42,472.17");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=41.29,475.87");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=14.86,434.86");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=19.02,362.05");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=102.04,315.14");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=118.50,346.98");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=154.18,410.05");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=14.15,344.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=65.18,225.43");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=109.01,241.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=26.52,270.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=109.07,265.82");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=73.86,370.21");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=0.02,261.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=94.35,200.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=39.81,282.09");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=48.11,395.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=179.00,377.77");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=58.30,370.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=28.82,470.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=109.83,377.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=91.05,377.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=10.93,297.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=32.51,414.44");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=75.37,424.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=90.08,535.79");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=43.81,490.13");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=59.19,468.96");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=42.29,350.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=156.35,396.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=93.70,260.50");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=211.64,411.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=20.50,387.30");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=67.13,201.58");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=72.71,268.51");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=8.88,216.97");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=95.06,214.11");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=131.93,305.19");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=77.63,221.36");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=51.15,197.45");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=119.99,363.50");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=141.80,346.56");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=206.61,420.93");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=129.86,332.23");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=70.57,390.44");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=59.22,328.37");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=76.87,334.74");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=10.09,377.56");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=95.41,423.09");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=24.12,440.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=79.74,487.12");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=79.52,435.88");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=41.72,440.75");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=59.00,427.93");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=42.13,331.09");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=121.92,436.29");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=194.52,459.27");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=30.18,304.17");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=44.54,221.96");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=86.57,279.88");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=83.66,245.15");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=30.79,292.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=1.08,382.99");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=85.69,311.58");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=34.92,341.62");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=2.62,288.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=74.19,462.58");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=204.47,356.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=75.48,290.63");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=65.50,451.74");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=18.41,313.12");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=107.18,299.61");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=48.88,319.09");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=45.25,379.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=144.51,384.29");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=127.81,544.44");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=27.31,508.14");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=63.11,508.75");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=38.76,366.71");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=121.90,289.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=113.80,423.06");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=195.98,400.42");
    }

}

