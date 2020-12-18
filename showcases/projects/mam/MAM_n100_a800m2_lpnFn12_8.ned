
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_8
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=46.95,625.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=72.27,550.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=89.22,580.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=40.40,550.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=73.93,476.51");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=100.93,491.63");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=122.92,467.63");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=204.23,432.59");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=55.07,713.84");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=6.46,645.70");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=90.81,544.46");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=177.92,585.44");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=57.50,542.45");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=91.30,439.23");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=117.06,488.66");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=192.05,399.67");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=153.62,373.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=140.59,681.64");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=34.73,617.63");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=61.18,568.85");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=100.71,586.48");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=2.18,539.34");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=63.83,399.86");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=117.39,440.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=209.77,500.70");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=242.49,444.36");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=20.35,671.06");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=38.24,644.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=41.31,467.35");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=99.37,553.79");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=27.44,521.32");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=49.86,497.80");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=13.95,531.75");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=113.45,551.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=191.25,432.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=129.15,787.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=21.76,704.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=73.11,622.21");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=80.34,613.78");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=28.96,511.12");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=81.65,432.06");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=96.26,507.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=210.35,480.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=271.32,444.27");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=106.36,686.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=45.83,596.73");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=111.87,540.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=58.00,654.65");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,567.84");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=79.98,412.36");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=100.61,459.51");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=147.39,486.02");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=203.88,532.25");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=89.34,706.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=83.80,655.64");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=70.69,583.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=88.87,486.96");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=97.43,570.60");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=131.64,554.52");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=37.62,439.03");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=119.79,410.35");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=260.23,490.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=63.15,719.76");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=58.48,627.78");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=153.75,541.56");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=63.98,485.24");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=27.72,545.42");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=85.62,519.92");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=107.71,451.25");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=217.93,455.64");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=175.13,491.27");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=103.13,773.81");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=17.97,694.09");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=65.76,613.39");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=142.59,607.52");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=38.05,560.80");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=136.80,544.93");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=154.45,456.55");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=136.81,489.69");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=262.90,361.85");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=131.51,613.38");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=76.93,692.35");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=4.28,619.66");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=164.88,591.67");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=12.92,595.16");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=105.21,408.22");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=84.91,393.05");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=59.82,410.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=171.50,440.24");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=164.54,726.12");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=48.96,583.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=39.06,577.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=151.33,572.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=3.65,477.36");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=95.32,379.37");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=127.36,513.55");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=30.64,465.45");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=187.87,530.51");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=98.33,717.57");
    }

}

