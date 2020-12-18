
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn1-1
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
        @display("p=186.00,813.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=219.19,861.84");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=172.73,814.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=208.54,825.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=153.33,839.98");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=201.08,864.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=150.74,803.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=142.03,850.25");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=94.95,847.23");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=50.24,787.03");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=63.03,876.27");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=76.36,889.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=87.88,836.07");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=121.78,744.91");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=88.69,756.72");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=88.04,734.45");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=70.90,736.52");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=76.77,674.79");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=24.72,638.69");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=77.64,711.10");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=39.01,780.66");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=110.62,791.21");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=86.07,770.32");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=2.66,879.70");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=45.74,851.15");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=65.99,827.75");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=81.74,827.54");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=103.38,835.65");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=106.77,817.84");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=49.00,764.02");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=138.27,820.21");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=70.45,751.61");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=78.05,762.31");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=67.14,801.78");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=107.41,768.37");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=163.84,733.31");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=62.83,789.83");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=108.06,725.06");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=44.96,712.18");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=50.07,824.40");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=59.19,750.60");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=81.96,806.42");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=75.11,814.61");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=116.08,866.62");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=16.02,856.57");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=2.36,801.73");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=73.16,866.23");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=91.25,811.90");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=94.59,796.90");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=100.30,734.45");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=69.71,687.64");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=41.35,688.82");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=52.69,722.35");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=112.06,699.78");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=133.01,708.37");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=176.99,774.26");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=182.78,669.16");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=140.12,654.47");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=99.17,563.24");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=70.01,549.69");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=39.19,518.26");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=71.14,478.82");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=119.30,564.41");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=189.91,527.38");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=136.60,486.42");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=112.29,479.99");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=130.93,536.50");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=186.28,600.57");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=253.42,572.72");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=324.93,510.14");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=241.32,510.41");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=227.20,461.78");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=141.95,500.52");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=189.72,472.37");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=224.89,475.61");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=242.39,454.52");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=194.44,504.95");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=167.14,433.91");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=199.51,475.95");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=258.30,444.44");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=276.33,480.57");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=280.82,388.91");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=295.15,357.84");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=279.32,326.44");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=263.00,312.07");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=228.83,266.40");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=307.37,228.68");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=357.32,284.51");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=322.48,281.74");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=337.09,270.67");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=295.17,341.65");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=313.53,391.38");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=363.39,447.10");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=288.08,474.31");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=351.15,461.85");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=298.80,403.07");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=215.19,397.68");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=285.85,371.31");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=247.12,383.12");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=238.69,376.37");
    }

}

