
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_9
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=132.62,278.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=58.02,333.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=25.65,370.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=55.74,349.53");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=119.07,334.33");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=77.14,250.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=48.64,263.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=25.12,338.42");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=40.21,284.35");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=28.92,288.98");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=0.00,269.64");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=18.62,269.56");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=146.56,318.04");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=217.63,261.22");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=72.55,380.14");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=48.93,309.65");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=118.03,318.50");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=175.88,369.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=6.35,208.94");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=67.22,278.40");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=74.79,330.81");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=67.93,255.78");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=2.08,251.26");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=97.63,271.40");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=35.18,221.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=20.16,303.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=148.32,226.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=16.10,346.80");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=86.80,385.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=95.62,362.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=175.02,397.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=106.99,311.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=36.67,270.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=34.92,343.16");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=127.78,260.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=30.06,240.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=68.19,298.63");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=70.06,308.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=83.07,310.29");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=228.43,262.41");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=65.53,322.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=22.18,323.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=122.32,386.26");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=105.19,373.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=76.21,200.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=114.70,201.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=0.59,380.19");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=51.72,299.86");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=51.00,193.53");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=15.16,217.82");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=58.73,261.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=142.97,279.45");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=99.93,184.80");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=62.24,366.54");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=33.66,325.13");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=71.53,357.27");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=88.01,283.12");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=90.49,236.54");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=114.18,290.96");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=26.16,353.58");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=56.31,221.79");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=50.18,236.46");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=2.30,346.76");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=10.54,290.83");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=81.83,338.46");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=155.98,279.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=5.08,399.49");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=17.17,361.58");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=113.26,274.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=100.47,243.28");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=109.10,214.21");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=26.79,257.35");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=114.05,344.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=52.40,205.40");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=19.92,235.96");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=11.42,278.51");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=106.23,225.80");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=58.26,290.52");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=174.97,299.11");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=123.84,287.20");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=47.62,338.12");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=58.43,388.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=179.32,268.81");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=171.33,249.49");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=125.12,208.34");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=38.80,313.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=20.45,206.23");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=94.39,339.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=55.56,248.86");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=63.94,239.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=188.28,292.05");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=148.43,367.27");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=89.57,296.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=15.20,315.34");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=137.18,312.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=121.18,305.25");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=31.92,165.97");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=40.20,232.00");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=8.22,323.74");
    }

}

