
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-1
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
        @display("p=561.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=626.20,83.65");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=572.86,70.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=595.69,22.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=608.73,106.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=671.61,155.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=652.41,143.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=584.81,194.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=538.27,241.01");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=466.54,284.49");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=520.07,353.97");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=484.67,301.71");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=432.82,251.61");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=555.02,162.36");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=701.69,139.61");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=626.56,50.68");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=658.45,14.52");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=582.38,107.96");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=671.02,216.39");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=680.60,113.60");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=539.97,212.49");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=578.80,305.90");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=449.46,302.82");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=571.81,366.99");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=501.86,316.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=390.96,222.75");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=523.86,128.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=545.04,97.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=508.15,94.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=599.13,52.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=606.40,141.45");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=718.61,203.35");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=634.03,210.08");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=553.43,266.16");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=445.65,205.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=515.63,257.50");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=534.39,363.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=422.00,349.71");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=401.81,271.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=530.96,145.89");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=670.43,50.74");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=572.66,30.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=556.66,73.12");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=565.66,112.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=711.31,182.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=626.92,145.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=602.40,154.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=525.86,263.25");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=539.50,328.25");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=519.73,338.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=471.04,232.61");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=406.29,291.11");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=517.74,104.41");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=627.43,24.55");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=555.30,30.29");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=581.48,47.66");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=598.98,115.39");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=660.02,164.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=723.02,185.13");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=586.63,183.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=542.52,307.79");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=459.84,249.20");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=560.59,331.46");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=518.11,308.23");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=429.74,285.14");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=617.71,34.62");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=676.47,65.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=569.05,55.47");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=499.13,20.89");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=687.05,93.28");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=728.22,153.45");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=649.74,131.02");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=596.72,217.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=598.61,259.09");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=457.29,290.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=479.34,351.32");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=467.28,392.35");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=449.15,339.19");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=503.90,109.77");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=596.20,92.58");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=642.64,75.92");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=615.82,19.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=612.79,172.68");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=653.33,75.21");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=662.18,102.73");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=541.01,180.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=517.86,206.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=477.41,293.97");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=518.41,373.42");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=462.85,262.02");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=446.93,232.69");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=539.76,193.47");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=592.35,129.80");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=551.31,39.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=567.44,89.24");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=637.27,84.52");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=753.96,206.50");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=556.86,132.09");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=578.07,207.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=526.72,162.52");
    }

}

