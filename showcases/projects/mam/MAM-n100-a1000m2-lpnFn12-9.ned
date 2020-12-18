
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-9
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
        @display("p=709.00,624.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=762.33,630.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=755.32,598.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=789.79,612.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=799.93,626.77");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=845.76,570.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=932.41,579.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=934.42,569.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=937.22,473.12");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=683.07,650.58");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=766.06,618.29");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=736.41,648.78");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=731.75,638.40");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=840.03,552.67");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=872.49,587.68");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=952.44,547.65");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=937.20,542.00");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=913.52,480.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=686.45,568.75");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=794.58,641.01");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=757.81,559.48");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=795.03,589.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=763.22,608.45");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=898.88,546.99");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=920.83,599.40");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=952.02,598.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=922.02,510.35");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=801.15,612.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=824.72,656.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=666.16,570.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=718.98,635.00");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=789.10,721.17");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=815.02,614.62");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=976.09,628.55");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=886.18,591.50");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=988.74,415.52");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=727.25,602.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=728.64,700.44");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=765.57,591.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=840.18,538.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=763.76,645.52");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=829.71,479.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=865.62,601.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=991.75,564.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=916.41,467.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=673.65,656.14");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=706.49,590.58");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=741.76,605.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=772.23,664.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=832.39,647.34");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=815.75,578.49");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=903.27,559.98");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=955.14,567.81");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=972.05,413.72");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=752.71,654.78");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=825.94,581.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=692.58,662.06");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=851.84,584.94");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=779.71,610.24");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=747.97,552.96");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=874.12,528.75");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=850.77,526.24");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=986.67,513.61");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=747.58,585.39");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=856.43,649.02");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=668.90,556.17");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=810.00,556.34");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=846.96,658.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=876.42,498.94");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=924.39,633.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=942.79,624.68");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=932.48,502.29");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=645.77,603.59");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=663.43,621.53");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=705.50,656.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=793.55,538.19");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=889.36,624.16");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=798.36,602.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=910.90,571.68");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=934.35,591.87");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=901.60,499.81");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=746.72,639.43");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=731.49,571.48");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=741.46,628.04");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=776.52,692.98");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=730.59,659.05");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=810.05,649.30");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=906.81,666.75");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=872.12,564.36");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=966.17,443.86");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=654.87,641.64");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=755.69,708.98");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=759.21,547.10");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=826.14,634.76");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=762.71,718.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=893.16,582.12");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=868.22,548.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=953.10,517.67");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=893.57,445.32");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=625.45,578.79");
    }

}

