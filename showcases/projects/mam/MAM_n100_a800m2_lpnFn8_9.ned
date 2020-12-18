
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_9
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
        @display("p=96.32,670.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=101.16,660.70");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=89.49,624.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=105.60,690.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=24.56,670.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=19.70,713.32");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=56.35,735.73");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=43.46,771.18");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=23.90,754.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=34.26,657.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=48.18,649.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=72.05,714.65");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=98.81,772.54");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=89.38,716.91");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=111.57,677.70");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=17.79,631.93");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=120.22,706.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=104.30,634.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=53.84,702.11");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=82.48,730.66");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=61.58,775.01");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=119.33,748.70");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=30.12,645.71");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=65.27,659.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=30.05,699.91");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=129.15,688.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=63.50,760.20");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=48.41,673.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=47.10,637.67");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=130.07,676.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=26.33,683.84");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=58.18,623.09");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=85.45,666.89");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=54.19,766.92");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=11.69,683.93");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=66.66,600.40");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=121.01,662.83");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=27.44,722.73");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=55.19,688.58");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=47.91,715.21");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=144.49,573.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=21.99,588.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=102.76,755.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=33.92,761.71");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=34.01,731.92");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=123.20,766.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=44.20,783.12");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=2.82,734.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=19.01,651.00");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=64.62,706.04");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=98.08,736.28");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=86.64,693.24");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=115.39,638.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=135.62,655.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=92.62,635.94");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=86.75,777.17");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=69.35,583.26");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=40.34,698.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=52.87,793.36");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=27.79,741.73");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=47.99,754.60");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=106.47,604.61");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=43.06,553.88");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=58.84,638.24");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=70.45,744.75");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=70.85,644.30");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=56.17,664.47");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=95.44,602.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=156.76,711.24");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=37.03,677.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=33.72,792.03");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=22.24,798.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=7.11,745.44");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=12.79,759.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=43.58,577.85");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=78.27,651.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=147.29,733.04");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=130.24,645.02");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=175.48,667.21");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=3.53,644.76");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=85.03,550.63");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=163.76,624.13");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=57.78,725.41");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=97.57,710.66");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=66.72,735.17");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=75.05,789.58");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=80.55,755.27");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=111.18,594.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=43.05,602.51");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=70.10,627.51");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=159.87,759.58");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=174.86,640.51");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=189.87,700.08");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=125.46,626.56");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=157.28,648.75");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=18.90,621.39");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=13.37,694.32");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=94.15,796.08");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=0.16,783.68");
    }

}

