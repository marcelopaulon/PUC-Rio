
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-3
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
        @display("p=176.00,249.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=173.22,277.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=106.31,245.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=81.91,246.95");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=137.64,242.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=106.48,200.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=127.38,188.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=96.76,232.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=111.54,235.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=89.63,285.51");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=11.14,274.11");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=44.69,288.04");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=81.26,357.42");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=183.93,255.48");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=141.40,356.03");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=73.46,307.69");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=25.76,221.73");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=90.65,200.56");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=145.10,264.54");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=132.58,171.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=78.53,206.06");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=89.42,224.81");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=121.00,362.63");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=35.81,333.60");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=66.31,319.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=37.60,364.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=239.69,255.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=163.12,192.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=67.46,293.73");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=68.53,246.82");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=151.28,277.73");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=41.79,166.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=164.67,206.92");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=102.00,265.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=99.68,215.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=172.81,259.93");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=45.88,266.29");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=1.18,253.18");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=40.58,344.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=207.36,298.18");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=103.52,344.11");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=119.04,266.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=102.02,294.12");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=178.59,167.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=131.82,278.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=62.50,189.35");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=122.59,297.53");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=99.37,278.19");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=163.31,270.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=7.53,334.07");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=63.28,282.68");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=88.71,315.78");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=156.36,314.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=191.84,229.43");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=170.74,234.96");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=20.25,236.72");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=135.02,210.80");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=44.63,231.54");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=160.06,117.63");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=83.32,180.44");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=99.92,328.82");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=183.70,310.09");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=9.72,292.64");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=17.19,256.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=59.38,390.29");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=258.65,277.77");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=164.72,320.71");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=79.95,323.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=139.16,256.07");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=120.43,246.16");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=109.51,218.90");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=141.78,105.20");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=122.16,146.58");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=115.76,309.07");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=88.67,333.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=37.71,308.00");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=107.93,319.25");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=107.57,355.80");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=180.44,231.60");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=203.77,307.77");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=95.74,189.69");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=55.52,218.67");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=158.43,150.69");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=118.53,127.77");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=121.65,170.33");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=153.06,162.79");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=42.60,277.36");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=70.29,266.18");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=10.14,193.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=79.94,260.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=90.58,388.36");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=145.51,301.79");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=201.94,271.51");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=37.31,246.91");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=70.90,231.60");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=84.42,272.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=110.85,168.99");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=125.04,232.92");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=133.56,307.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=144.69,197.14");
    }

}

