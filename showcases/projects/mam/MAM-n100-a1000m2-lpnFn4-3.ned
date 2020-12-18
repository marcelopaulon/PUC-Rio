
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-3
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
        @display("p=673.00,112.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=727.99,121.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=745.42,115.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=708.74,156.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=672.24,175.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=685.36,153.36");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=611.06,120.83");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=600.11,148.41");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=584.62,143.42");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=609.64,199.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=637.21,287.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=546.12,304.85");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=556.60,307.69");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=539.37,312.50");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=453.95,356.95");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=444.96,337.98");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=481.07,362.15");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=445.97,373.55");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=519.55,379.67");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=548.94,362.69");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=518.70,350.66");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=564.73,295.25");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=543.53,371.85");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=520.83,404.70");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=465.04,378.17");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=643.88,96.15");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=757.88,126.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=777.38,85.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=696.78,165.66");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=704.35,213.50");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=633.56,103.37");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=581.46,105.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=631.44,146.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=565.50,162.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=613.37,252.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=650.88,254.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=607.21,282.96");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=583.59,343.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=587.93,324.57");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=496.29,427.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=392.76,416.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=503.39,380.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=482.66,339.39");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=553.51,390.84");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=469.98,400.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=521.48,334.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=577.10,294.04");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=574.32,353.41");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=510.57,402.04");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=477.23,437.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=657.90,186.78");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=791.33,187.29");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=711.23,168.63");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=727.76,145.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=676.42,195.78");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=699.90,204.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=646.69,83.67");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=621.84,142.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=540.19,70.85");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=616.94,233.78");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=647.28,286.92");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=576.37,330.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=515.55,292.51");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=525.97,251.70");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=458.90,400.35");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=404.03,260.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=479.95,349.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=388.00,361.60");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=530.69,417.82");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=566.83,274.71");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=598.62,405.07");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=556.84,271.72");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=529.79,367.00");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=568.71,473.96");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=367.14,386.83");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=650.90,133.64");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=736.91,152.17");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=750.62,84.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=779.87,176.04");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=586.70,223.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=741.80,162.51");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=634.54,175.82");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=522.77,87.06");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=550.43,89.96");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=572.81,252.66");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=628.13,342.58");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=551.84,316.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=574.65,216.96");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=479.39,268.74");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=486.29,322.84");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=523.63,322.94");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=494.71,400.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=459.85,345.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=510.37,424.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=579.92,449.89");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=424.94,376.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=556.87,380.41");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=605.46,350.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=521.57,467.05");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=416.71,388.94");
    }

}

