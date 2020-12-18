
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-1
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
        @display("p=523.00,28.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=451.44,81.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=387.92,105.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=348.72,130.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=394.00,189.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=400.84,95.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=418.85,110.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=367.79,83.09");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=359.03,161.36");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=417.66,155.92");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=408.93,162.96");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=415.51,187.51");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=381.47,163.51");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=384.75,182.48");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=416.67,95.68");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=443.19,64.97");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=449.48,50.95");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=470.76,119.84");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=518.87,45.95");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=577.49,31.71");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=589.61,65.35");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=654.74,72.89");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=632.14,61.47");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=671.68,87.93");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=668.78,125.31");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=585.27,84.71");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=455.97,99.93");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=405.66,133.61");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=339.91,108.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=332.63,133.85");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=359.11,135.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=455.15,160.66");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=348.27,176.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=292.16,222.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=358.10,205.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=400.11,180.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=496.38,147.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=385.66,223.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=318.64,133.82");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=352.58,67.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=464.14,77.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=435.59,43.02");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=453.72,112.27");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=544.76,121.80");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=534.33,78.17");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=633.92,78.20");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=590.19,52.47");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=623.48,39.48");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=608.15,127.20");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=683.60,88.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=597.52,4.18");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=457.62,21.23");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=323.12,115.79");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=291.98,156.58");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=423.23,164.56");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=427.02,140.28");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=347.87,143.16");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=401.26,145.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=329.49,79.20");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=487.07,182.99");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=331.21,157.12");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=425.20,263.18");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=370.41,192.54");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=464.53,145.92");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=430.10,18.69");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=399.63,25.06");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=372.90,103.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=486.61,193.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=502.32,76.38");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=664.06,29.44");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=596.98,94.84");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=684.92,36.20");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=595.18,116.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=591.43,38.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=680.26,153.67");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=531.70,15.99");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=364.18,95.95");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=357.54,39.27");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=272.39,102.95");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=368.32,145.07");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=306.27,84.91");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=442.08,130.25");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=387.60,90.13");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=322.30,199.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=440.16,153.10");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=339.79,217.89");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=407.18,216.75");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=326.50,106.23");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=467.45,186.10");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=364.37,69.71");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=516.54,11.47");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=447.48,4.92");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=426.76,178.70");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=524.66,58.00");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=637.49,38.53");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=552.07,30.42");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=659.04,95.24");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=670.02,38.38");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=652.68,127.73");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=694.75,141.82");
    }

}

