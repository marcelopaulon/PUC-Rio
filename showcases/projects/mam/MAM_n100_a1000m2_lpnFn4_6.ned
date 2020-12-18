
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_6
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=96.48,921.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=85.58,925.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=45.78,970.02");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=5.82,999.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=5.36,983.48");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=26.42,996.08");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=101.04,947.52");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=104.58,930.07");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=75.00,911.14");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=45.97,879.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=8.90,846.10");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=102.21,846.74");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=137.16,777.76");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=146.11,757.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=89.81,730.11");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=69.02,780.73");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=122.42,752.17");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=59.90,675.51");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=26.85,586.32");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=19.84,600.29");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=70.52,529.58");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=111.91,509.80");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=39.47,484.65");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=12.43,493.86");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=26.28,861.92");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=123.60,849.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=115.03,991.32");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=83.72,881.08");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=33.14,988.00");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=66.34,940.03");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=97.59,980.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=141.33,979.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=49.12,929.50");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=87.85,828.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=72.07,858.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=47.47,890.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=79.76,812.49");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=207.04,735.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=147.30,746.49");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=44.88,748.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=119.45,725.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=113.51,789.11");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=89.87,611.69");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=18.34,571.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=12.67,659.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=22.33,498.55");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=112.73,480.52");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=48.64,477.05");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=6.44,456.26");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=95.20,890.23");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=50.51,860.82");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=82.10,845.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=32.80,934.76");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=7.07,954.72");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=3.57,908.79");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=58.85,999.44");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=80.38,945.02");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=131.79,911.87");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=87.67,903.18");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=105.06,868.25");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=13.00,829.31");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=111.76,835.07");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=174.75,758.02");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=223.33,769.21");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=41.39,725.22");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=68.22,761.02");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=138.91,733.90");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=60.57,596.43");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=12.35,610.70");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=23.90,531.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=82.76,560.03");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=38.89,501.17");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=56.14,468.70");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=84.75,442.79");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=178.04,938.01");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=22.25,917.50");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=71.93,926.29");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=57.28,974.03");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=60.27,930.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=3.74,897.06");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=80.96,978.90");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=148.88,898.08");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=158.23,957.94");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=105.71,885.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=5.42,943.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=22.57,850.99");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=158.95,845.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=92.68,760.01");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=166.74,683.37");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=8.22,695.13");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=57.73,745.38");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=96.91,743.37");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=48.26,675.82");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=56.00,560.36");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=56.14,605.87");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=58.77,548.23");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=77.27,586.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=33.37,429.49");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=96.48,496.11");
    }

}

