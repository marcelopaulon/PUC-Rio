
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-4
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
        @display("p=509.00,65.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=494.71,68.00");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=575.39,16.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=542.72,82.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=546.02,70.40");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=447.95,54.82");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=453.99,110.11");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=509.12,176.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=478.05,143.01");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=473.09,96.44");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=501.33,83.08");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=512.51,94.04");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=507.19,48.24");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=490.46,82.89");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=483.09,62.22");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=573.92,81.72");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=533.42,11.54");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=524.08,21.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=406.33,66.18");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=500.49,58.83");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=520.82,102.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=444.49,223.89");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=457.95,86.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=524.82,49.93");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=541.31,144.82");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=521.24,140.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=554.32,109.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=476.13,2.93");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=587.00,41.54");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=466.40,39.68");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=489.41,148.83");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=432.45,37.06");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=527.69,167.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=495.22,192.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=549.27,137.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=415.91,166.10");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=547.44,40.33");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=464.56,136.99");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=523.97,60.73");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=563.14,91.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=536.97,92.58");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=492.61,12.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=510.10,137.37");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=578.30,128.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=425.12,26.12");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=462.80,118.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=592.64,162.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=396.64,190.99");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=472.61,77.07");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=492.92,98.19");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=441.14,70.78");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=411.31,45.79");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=492.83,163.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=554.48,48.32");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=574.49,102.48");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=565.54,65.79");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=599.90,96.71");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=450.50,66.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=480.14,87.16");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=507.61,196.63");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=425.27,146.27");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=454.78,19.84");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=511.80,16.01");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=505.17,153.33");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=498.93,36.98");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=584.46,52.26");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=499.89,106.64");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=565.23,11.07");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=598.24,111.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=599.27,83.95");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=435.20,84.37");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=388.32,100.99");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=458.50,261.69");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=467.89,54.85");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=522.11,73.40");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=406.76,85.70");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=525.34,85.24");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=503.45,5.32");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=514.23,56.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=503.79,118.79");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=545.85,14.44");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=629.01,132.44");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=554.21,4.92");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=436.50,20.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=388.88,182.18");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=536.21,106.44");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=428.18,162.82");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=452.56,10.02");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=529.22,123.95");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=581.65,140.77");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=481.96,111.47");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=559.77,22.08");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=584.40,94.85");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=618.28,46.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=548.08,156.79");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=602.48,51.02");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=446.87,135.68");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=442.48,111.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=506.60,231.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=495.90,218.46");
    }

}

