
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-5
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
        @display("p=680.00,334.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=716.01,343.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=797.07,348.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=726.06,361.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=732.49,349.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=786.11,385.65");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=861.20,324.19");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=864.63,249.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=825.87,213.31");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=789.73,180.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=813.74,209.31");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=874.80,189.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=869.17,207.05");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=726.07,270.56");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=681.63,322.56");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=783.27,351.92");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=803.21,311.44");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=727.93,387.57");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=752.32,461.86");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=880.15,301.08");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=945.69,277.19");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=748.92,202.63");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=797.23,199.30");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=870.52,231.76");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=822.00,151.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=806.32,229.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=606.96,378.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=750.54,427.80");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=788.99,313.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=768.85,379.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=709.22,407.44");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=790.84,459.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=881.43,316.83");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=831.36,195.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=884.02,201.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=742.01,231.14");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=778.12,178.35");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=897.30,239.74");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=944.38,190.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=682.74,346.94");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=677.21,378.68");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=747.57,343.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=737.31,381.77");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=786.22,303.66");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=715.86,444.82");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=816.54,336.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=899.49,261.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=801.84,183.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=780.84,190.82");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=852.59,231.62");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=878.91,214.18");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=820.49,263.89");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=690.67,312.63");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=802.19,299.76");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=785.11,323.73");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=703.58,362.94");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=761.50,364.47");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=806.90,373.70");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=863.30,338.10");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=864.86,305.19");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=804.59,270.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=815.62,235.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=807.37,243.18");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=917.37,184.02");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=878.19,250.39");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=615.04,266.72");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=681.49,363.03");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=761.29,426.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=739.69,396.67");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=734.49,330.44");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=756.49,309.37");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=788.54,340.66");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=815.81,273.52");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=894.06,196.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=854.41,105.19");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=796.77,154.24");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=927.04,245.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=921.89,231.52");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=612.36,361.62");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=649.23,364.15");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=796.67,254.47");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=764.58,452.24");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=682.57,303.79");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=783.06,373.47");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=852.29,273.16");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=774.80,263.34");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=830.57,297.04");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=729.76,219.21");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=888.28,149.87");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=877.45,239.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=906.42,225.31");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=719.34,413.00");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=786.42,402.00");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=875.27,336.62");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=745.40,412.78");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=751.72,378.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=821.55,451.12");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=800.97,289.05");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=823.23,321.34");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=840.31,262.89");
    }

}

