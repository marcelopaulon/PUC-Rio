
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-0
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
        @display("p=867.00,767.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=801.77,738.75");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=812.00,732.52");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=883.65,742.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=862.47,739.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=885.98,719.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=961.02,707.51");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=985.32,766.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=996.67,741.44");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=811.12,696.49");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=816.16,757.23");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=891.61,767.09");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=836.56,656.18");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=789.22,707.34");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=840.84,708.33");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=977.47,716.32");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=902.10,770.24");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=954.16,798.78");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=916.41,755.92");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=733.78,749.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=746.69,736.51");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=861.93,800.82");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=878.77,787.33");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=883.61,699.62");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=996.62,632.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=944.06,713.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=927.04,802.17");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=770.28,785.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=803.87,767.84");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=814.66,713.25");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=902.81,726.63");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=861.83,668.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=794.98,746.37");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=958.38,651.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=980.56,746.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=986.73,786.78");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=961.44,788.39");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=846.72,810.62");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=826.40,726.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=823.77,806.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=842.14,756.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=906.17,755.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=955.75,610.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=955.36,831.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=948.25,771.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=835.96,721.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=835.92,734.49");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=735.16,701.97");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=927.99,703.92");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=914.19,822.87");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=812.40,682.53");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=871.15,708.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=968.10,836.02");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=987.20,642.86");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=907.80,804.10");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=811.05,805.94");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=763.42,709.38");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=895.15,737.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=846.21,719.55");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=910.71,690.48");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=991.25,675.23");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=926.68,776.89");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=992.56,726.06");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=859.78,777.80");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=770.00,667.49");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=793.05,718.96");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=843.03,690.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=933.44,692.21");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=947.09,691.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=967.33,624.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=990.00,688.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=973.63,670.67");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=800.48,710.96");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=703.30,731.32");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=781.54,751.08");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=850.67,732.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=849.26,772.94");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=842.10,677.39");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=938.35,667.24");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=950.80,737.08");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=972.12,732.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=891.12,814.53");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=831.30,831.18");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=856.24,761.48");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=909.70,674.56");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=817.25,665.47");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=980.12,700.03");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=937.12,734.86");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=973.91,769.51");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=982.34,799.59");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=834.78,785.43");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=778.24,736.17");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=824.94,696.61");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=880.83,733.14");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=872.78,742.82");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=826.43,680.99");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=871.41,690.93");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=964.88,776.90");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=944.14,748.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=880.33,844.67");
    }

}

