
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_3
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=100.55,626.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=54.54,563.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=52.01,577.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=30.35,621.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=48.60,652.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=77.49,606.89");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=128.15,533.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=152.98,457.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=211.57,425.43");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=238.77,498.77");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=255.73,460.13");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=242.64,466.66");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=158.10,733.41");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=102.27,583.94");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=33.86,560.07");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=45.60,593.40");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=33.45,544.50");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=92.65,641.53");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=96.78,545.02");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=179.03,592.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=192.54,549.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=112.56,417.65");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=304.01,423.28");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=257.26,403.16");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=247.43,393.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=140.95,630.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=68.68,627.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=87.06,650.42");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=105.90,568.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=42.00,670.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=21.11,680.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=104.82,683.76");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=90.16,452.25");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=185.51,500.20");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=202.17,444.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=164.25,550.32");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=231.65,552.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=239.46,476.25");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=17.35,733.62");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=53.00,702.31");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=36.24,578.40");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=111.36,546.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=4.17,674.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=61.57,614.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=51.29,621.11");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=125.94,509.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=140.20,361.07");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=208.40,460.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=238.50,488.01");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=216.61,547.17");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=302.07,532.69");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=71.99,731.27");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=160.03,644.64");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=21.14,504.05");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=80.69,483.64");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=29.71,641.58");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=34.78,652.51");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=71.23,577.53");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=125.30,551.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=146.66,413.24");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=258.42,473.28");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=301.36,543.41");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=195.77,389.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=267.73,442.15");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=176.24,656.32");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=62.68,600.14");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=86.79,631.05");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=140.38,558.99");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=120.98,592.83");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=35.23,603.34");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=80.26,676.69");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=121.43,443.72");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=67.21,432.71");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=215.59,325.61");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=264.53,540.55");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=280.17,545.53");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=210.79,380.25");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=47.21,716.54");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=150.23,592.79");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=55.39,541.23");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=76.28,659.44");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=127.84,641.00");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=37.08,741.31");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=122.32,676.07");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=102.22,514.06");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=76.93,493.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=207.36,502.43");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=225.30,471.04");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=314.49,443.61");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=163.84,449.95");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=42.74,691.06");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=49.75,608.93");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=70.32,549.95");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=82.74,520.29");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=11.11,627.82");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=64.82,719.44");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=105.92,650.32");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=97.63,557.86");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=125.94,489.86");
    }

}

