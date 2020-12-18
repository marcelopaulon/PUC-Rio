
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_0
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
        @display("p=169.31,689.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=72.90,669.80");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=44.59,735.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=27.14,661.04");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=15.77,645.56");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=6.63,633.70");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=51.63,617.47");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=61.92,685.01");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=100.36,632.73");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=136.14,632.35");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=182.74,589.55");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=230.37,594.14");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=102.58,717.12");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=143.59,688.97");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=129.50,709.05");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=43.47,723.88");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=74.47,745.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=36.57,645.21");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=57.25,698.55");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=54.07,561.33");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=14.37,724.71");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=65.36,635.11");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=143.33,602.87");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=179.14,649.06");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=252.14,654.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=33.55,729.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=179.34,762.52");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=84.94,670.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=47.01,712.82");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=46.03,603.88");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=57.06,591.37");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=25.75,550.39");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=39.21,699.69");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=74.30,701.49");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=144.70,578.97");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=198.73,624.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=221.39,620.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=192.77,673.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=30.44,671.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=198.13,600.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=82.06,581.81");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=103.95,727.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=69.16,612.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=79.30,595.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=17.35,633.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=123.87,576.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=73.21,733.80");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=56.83,628.27");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=164.41,645.49");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=188.87,535.61");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=274.00,629.76");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=87.87,794.27");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=177.28,675.75");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=3.50,737.84");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=53.33,743.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=105.83,652.30");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=71.83,646.83");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=49.06,640.03");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=106.84,687.26");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=94.83,667.36");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=126.50,614.08");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=169.08,601.68");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=231.82,505.31");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=274.67,611.67");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=124.00,789.26");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=128.08,641.35");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=92.36,688.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=107.04,664.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=78.88,658.52");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=32.75,624.66");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=40.81,556.87");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=112.53,543.10");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,690.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=185.74,627.90");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=164.80,663.40");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=239.94,540.26");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=210.91,535.62");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=28.71,693.91");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=240.88,641.82");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=60.02,667.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=56.47,752.96");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=5.91,673.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=48.92,579.58");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=24.33,604.38");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=71.45,626.96");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=65.72,770.51");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=124.95,725.30");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=203.87,685.05");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=205.45,572.48");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=323.72,612.01");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=18.98,666.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=191.04,763.39");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=135.25,667.48");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=29.28,759.45");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=85.15,680.39");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=20.22,618.05");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=23.78,712.47");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=71.93,544.57");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=101.63,738.51");
    }

}

