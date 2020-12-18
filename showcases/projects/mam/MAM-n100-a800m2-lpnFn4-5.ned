
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-5
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
        @display("p=791.00,340.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=747.59,314.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=727.18,278.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=774.93,260.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=750.38,261.45");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=793.37,262.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=778.35,237.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=729.40,229.86");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=747.18,214.81");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=764.53,152.24");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=733.06,146.90");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=674.45,76.79");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=616.45,94.83");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=622.46,119.19");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=600.88,80.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=564.95,59.84");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=572.85,33.64");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=566.73,24.75");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=613.52,71.70");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=667.59,113.59");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=608.33,61.86");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=588.01,82.92");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=552.02,41.03");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=593.07,6.26");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=537.07,24.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=787.35,394.08");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=779.46,359.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=692.35,318.16");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=762.57,269.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=702.83,273.67");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=776.99,346.05");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=778.38,166.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=722.21,209.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=763.59,193.08");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=748.19,137.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=736.05,135.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=724.81,106.92");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=625.53,108.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=625.18,150.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=673.77,101.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=471.34,38.12");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=534.47,6.56");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=587.14,58.58");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=657.46,15.03");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=655.93,109.87");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=629.80,83.06");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=618.87,173.43");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=618.13,44.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=553.66,14.04");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=540.76,49.33");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=747.87,392.15");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=703.39,402.57");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=756.44,296.33");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=762.50,212.05");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=709.96,319.47");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=790.40,214.51");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=786.27,230.75");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=682.59,201.59");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=743.50,146.93");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=753.47,154.51");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=715.76,123.08");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=711.36,14.01");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=699.36,128.01");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=648.67,188.01");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=570.41,104.72");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=616.23,18.98");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=612.59,29.30");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=528.91,17.04");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=583.63,43.53");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=696.55,101.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=685.76,73.03");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=597.88,61.62");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=537.72,138.96");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=641.71,77.55");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=524.10,36.72");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=763.72,252.45");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=702.00,263.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=734.27,286.11");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=765.95,351.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=751.61,234.15");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=725.23,254.65");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=777.46,282.19");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=665.67,285.81");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=736.46,221.17");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=780.23,193.80");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=693.15,172.35");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=612.60,113.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=661.13,59.67");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=529.08,88.50");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=626.98,59.06");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=505.25,78.64");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=549.30,109.46");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=586.50,102.45");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=658.90,31.38");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=737.41,106.59");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=603.05,122.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=680.07,89.92");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=482.32,58.65");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=589.21,15.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=465.41,13.92");
    }

}

