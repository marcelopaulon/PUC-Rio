
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_9
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=34.64,70.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=64.91,67.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=79.57,8.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=105.25,42.95");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=24.31,38.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=23.06,135.00");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=9.14,47.02");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=99.62,81.29");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=175.35,134.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=225.26,172.28");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=314.52,149.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=323.63,144.80");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=359.81,162.90");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=398.73,192.88");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=397.09,218.57");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=347.39,223.88");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=333.13,245.03");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=351.52,265.28");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=387.64,184.83");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=399.20,249.26");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=366.48,203.15");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=384.16,196.00");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=336.04,223.44");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=303.07,129.65");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=94.72,129.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=59.62,104.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=135.10,12.54");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=63.47,19.80");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=92.81,32.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=38.48,137.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=32.80,126.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=52.41,64.37");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=157.43,86.62");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=206.10,206.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=181.86,143.66");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=327.32,77.38");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=235.04,153.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=345.26,190.34");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=361.77,275.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=380.57,309.12");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=293.70,197.79");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=303.86,174.96");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=348.76,245.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=390.70,115.12");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=374.09,324.84");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=359.91,143.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=387.51,147.69");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=348.00,179.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=326.84,128.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=125.64,52.31");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=82.52,37.82");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=13.31,34.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=133.63,73.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=63.72,78.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=2.34,82.17");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=16.89,160.17");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=22.36,78.60");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=138.38,49.84");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=198.31,102.29");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=163.43,191.11");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=352.98,113.59");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=286.98,165.51");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=345.64,154.04");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=334.14,169.75");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=337.64,272.89");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=344.24,234.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=337.64,288.38");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=263.59,244.92");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=335.30,180.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=364.61,241.13");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=313.17,200.41");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=395.80,266.28");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=319.58,161.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=250.95,159.86");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=12.68,136.83");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=62.60,92.47");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=55.00,126.80");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=50.84,31.35");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=160.03,19.51");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=32.58,83.17");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=11.13,125.16");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=35.67,96.85");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=130.82,102.77");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=148.28,164.27");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=225.90,145.49");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=391.44,98.35");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=349.27,87.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=344.15,125.19");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=389.35,167.99");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=327.39,198.89");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=317.38,307.36");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=280.53,232.57");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=371.03,226.52");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=359.69,226.33");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=355.59,255.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=383.19,268.05");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=373.82,193.57");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=310.22,233.63");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=252.08,206.04");
    }

}

