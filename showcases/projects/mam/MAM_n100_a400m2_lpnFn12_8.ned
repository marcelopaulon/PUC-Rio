
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_8
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
        @display("p=51.45,345.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=97.59,347.04");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=45.85,333.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=83.80,341.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=81.02,311.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=95.20,274.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=144.04,258.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=165.26,242.85");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=117.20,275.27");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=63.59,346.42");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=98.46,327.02");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=35.52,333.07");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=54.74,357.44");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=80.55,275.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=105.89,274.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=141.31,269.94");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=172.04,273.08");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=133.26,328.57");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=86.31,379.31");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=28.44,323.05");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=54.26,307.81");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=157.69,298.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=40.19,250.21");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=106.46,259.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=61.23,226.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=225.62,264.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=41.29,288.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=37.46,375.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=6.28,361.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=119.80,360.37");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=34.21,386.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=32.26,362.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=86.47,263.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=128.97,274.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=104.89,188.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=108.19,292.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=74.56,324.68");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=175.31,309.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=12.08,376.40");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=68.11,386.01");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=96.30,313.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=110.99,327.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=186.93,271.69");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=186.62,168.51");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=131.45,205.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=65.61,363.94");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=190.33,357.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=38.65,312.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=145.26,392.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=37.88,226.48");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=79.99,293.41");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=200.93,317.97");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=164.32,193.13");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=160.77,288.41");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=96.84,365.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=97.55,398.14");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=1.90,377.96");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=24.31,398.31");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=42.26,353.61");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=158.45,266.47");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=163.76,164.48");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=174.74,335.49");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=8.61,315.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=29.87,266.53");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=62.11,259.57");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=39.39,343.00");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=111.44,303.36");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=143.75,299.08");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=51.54,240.95");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=142.26,179.27");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=153.66,214.81");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=165.20,364.52");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=123.48,390.15");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=104.90,337.98");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=62.75,271.28");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=142.37,355.24");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=74.56,301.89");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=129.87,312.12");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=192.88,310.88");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=89.49,205.43");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=52.91,289.79");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=11.12,279.83");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=172.95,350.16");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=27.26,304.62");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=84.85,327.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=18.51,358.22");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=134.75,239.08");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=141.53,246.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=144.51,190.67");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=105.14,378.91");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=105.22,389.65");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=148.03,382.78");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=54.37,318.87");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=66.90,333.31");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=51.56,382.38");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=71.46,285.02");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=225.22,222.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=180.04,289.76");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=118.16,312.08");
    }

}

