
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-7
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
        @display("p=593.00,350.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=540.92,280.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=518.45,215.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=526.37,224.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=555.73,202.03");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=538.96,165.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=581.88,159.83");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=569.20,154.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=539.06,140.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=527.34,154.24");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=529.44,241.28");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=482.16,254.64");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=515.36,268.70");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=566.98,400.45");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=460.83,250.75");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=575.95,191.47");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=549.13,254.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=576.21,118.67");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=486.46,146.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=514.83,195.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=554.11,132.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=602.45,171.21");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=559.88,160.85");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=560.29,260.42");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=425.06,186.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=526.30,313.90");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=648.82,371.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=507.56,285.30");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=610.92,237.76");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=482.50,234.73");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=600.18,252.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=533.45,174.40");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=571.36,100.54");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=617.33,186.57");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=560.13,69.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=546.34,148.83");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=542.62,223.92");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=404.68,229.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=550.21,235.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=588.63,313.71");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=563.29,288.28");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=553.64,298.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=604.44,264.18");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=545.07,187.15");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=491.41,191.45");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=655.97,164.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=577.14,219.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=603.44,95.27");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=527.37,123.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=566.03,313.54");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=477.36,170.54");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=603.35,274.80");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=541.43,361.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=595.56,241.40");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=517.76,177.13");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=438.87,240.53");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=558.11,227.15");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=606.73,149.12");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=628.83,120.12");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=572.39,74.88");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=515.50,144.41");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=438.17,196.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=508.53,253.13");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=411.55,256.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=430.13,315.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=583.83,375.40");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=543.00,266.88");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=495.52,287.87");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=568.65,173.51");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=495.03,162.58");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=482.13,179.65");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=594.77,162.53");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=570.39,203.90");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=561.21,147.12");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=477.98,81.85");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=441.39,288.24");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=482.75,158.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=496.57,271.79");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=665.81,329.34");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=630.39,273.02");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=543.16,198.47");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=495.54,305.35");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=597.24,292.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=511.75,166.45");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=586.81,139.72");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=567.64,128.67");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=571.18,53.73");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=507.33,157.27");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=559.89,190.06");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=491.35,207.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=546.16,313.28");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=617.50,255.06");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=556.08,314.89");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=490.53,121.62");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=516.12,231.01");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=604.77,228.53");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=508.56,83.14");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=622.41,107.66");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=591.81,116.05");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=577.81,84.15");
    }

}

