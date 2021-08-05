
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_6
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=115.46,156.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=127.48,57.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=130.96,99.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=193.70,149.25");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=133.69,152.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=142.83,162.49");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=203.64,241.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=160.22,264.07");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=93.81,215.39");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=86.69,229.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=35.70,195.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=131.70,301.59");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=111.41,146.19");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=85.52,147.31");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=111.85,61.57");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=140.07,179.63");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=179.87,140.55");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=136.04,118.97");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=148.15,125.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=229.49,223.73");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=117.37,252.99");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=134.45,236.96");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=120.50,174.30");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=57.90,107.64");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=89.76,279.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=3.00,78.85");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=43.28,165.31");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=135.97,65.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=163.42,25.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=202.46,206.47");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=140.64,197.28");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=169.30,148.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=190.43,192.58");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=101.62,319.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=89.05,199.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=56.87,245.96");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=25.65,240.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=155.99,340.11");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=92.19,130.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=132.70,170.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=153.37,78.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=176.34,122.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=139.67,105.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=50.62,137.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=104.58,231.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=191.18,311.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=169.08,329.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=43.30,218.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=84.14,309.28");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=18.39,267.54");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=122.29,320.35");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=63.78,116.91");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=104.55,153.98");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=86.70,41.12");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=145.51,57.57");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=174.42,73.33");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=173.84,176.51");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=189.65,202.81");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=280.27,245.14");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=166.26,231.40");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=128.69,249.84");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=65.99,261.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=5.74,157.04");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=133.22,288.07");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=104.16,22.61");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=82.88,182.75");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=109.70,84.28");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=131.11,29.86");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=232.58,144.67");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=150.28,172.06");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=168.13,162.49");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=230.62,308.58");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=107.21,308.22");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=75.79,239.62");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=104.40,217.56");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=3.76,200.08");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=110.44,282.67");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=89.00,157.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=98.06,141.94");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=124.95,126.46");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=199.65,29.22");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=238.34,196.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=109.79,125.72");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=218.37,174.55");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=283.13,233.64");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=171.55,251.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=11.71,217.97");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=124.02,148.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=34.19,139.44");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=73.20,331.79");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=94.88,114.95");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=107.12,169.94");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=66.91,67.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=147.06,25.55");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=213.54,115.07");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=81.39,123.12");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=130.33,139.60");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=203.26,341.11");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=213.71,251.02");
    }

}

