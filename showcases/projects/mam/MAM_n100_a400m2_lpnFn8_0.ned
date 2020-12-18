
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_0
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=146.24,294.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=211.15,273.94");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=197.65,258.83");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=251.83,244.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=186.87,288.34");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=212.08,367.02");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=158.04,381.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=115.23,372.35");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=140.18,360.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=169.85,276.09");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=148.50,252.88");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=73.63,231.02");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=131.14,289.88");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=57.88,309.32");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=182.35,273.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=243.76,260.92");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=259.58,338.52");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=163.61,266.32");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=114.36,382.81");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=117.17,339.33");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=97.40,323.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=130.48,369.23");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=159.38,281.69");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=149.99,263.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=85.63,293.02");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=132.35,324.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=152.01,326.31");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=180.17,259.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=174.64,241.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=248.96,283.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=163.90,324.38");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=198.44,371.35");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=83.21,326.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=27.26,387.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=92.11,349.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=209.21,356.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=111.68,280.10");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=59.59,162.28");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=120.08,242.47");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=181.15,301.47");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=131.52,266.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=191.51,302.12");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=225.49,162.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=247.05,311.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=211.91,298.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=167.04,341.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=52.72,328.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=135.17,391.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=124.26,349.39");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=84.69,191.25");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=100.34,267.02");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=102.74,387.26");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=179.72,328.86");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=143.34,219.97");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=168.44,299.16");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=286.30,215.41");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=199.33,274.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=294.10,328.80");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=182.09,388.37");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=55.03,366.74");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=174.71,286.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=165.04,250.13");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=169.60,164.02");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=21.32,272.35");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=154.46,301.37");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=221.97,321.66");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=299.39,311.43");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=197.72,336.60");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=226.75,201.71");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=149.61,367.03");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=243.82,337.82");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=249.30,396.23");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=80.66,381.23");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=114.71,354.05");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=88.56,226.63");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=225.61,280.56");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=93.60,311.44");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=61.54,278.99");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=162.54,357.00");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=296.96,267.88");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=113.25,309.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=262.75,198.38");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=221.52,337.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=302.40,396.47");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=138.56,309.97");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=28.38,358.95");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=113.00,394.07");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=187.19,312.73");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=158.76,199.04");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=94.99,235.83");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=52.63,251.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=114.26,229.49");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=129.00,227.36");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=114.43,263.98");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=253.97,225.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=233.65,271.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=201.97,288.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=103.47,337.00");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=145.72,394.02");
    }

}

