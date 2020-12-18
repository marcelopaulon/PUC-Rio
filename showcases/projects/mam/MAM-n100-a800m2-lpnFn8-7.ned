
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-7
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
        @display("p=354.00,693.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=313.46,677.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=254.21,617.55");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=278.88,648.34");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=325.14,653.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=312.60,557.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=214.88,560.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=161.33,548.78");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=93.91,617.49");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=80.24,701.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=106.90,686.92");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=133.37,681.18");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=123.74,722.85");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=439.16,649.72");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=273.07,619.95");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=192.08,680.31");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=338.16,616.65");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=331.24,662.19");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=262.85,610.76");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=184.42,573.80");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=140.44,639.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=94.34,576.92");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=9.13,732.33");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=170.86,710.20");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=121.28,736.80");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=108.39,713.40");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=389.77,739.36");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=257.42,640.51");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=221.70,627.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=302.15,739.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=276.58,669.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=332.60,595.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=227.35,544.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=173.70,553.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=122.71,609.00");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=92.05,738.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=150.80,747.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=48.97,669.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=122.14,766.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=344.53,673.72");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=311.60,716.30");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=220.54,700.26");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=301.82,628.08");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=262.21,682.23");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=254.79,510.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=304.62,550.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=145.96,485.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=79.10,613.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=21.55,755.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=97.54,691.43");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=95.64,709.37");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=124.18,654.27");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=399.57,694.37");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=388.54,620.27");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=308.57,599.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=266.05,588.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=319.40,665.62");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=265.76,494.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=200.21,598.52");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=197.04,460.41");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=60.63,571.30");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,745.72");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=117.56,708.83");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=156.25,686.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=160.61,709.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=363.67,659.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=290.13,639.31");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=206.26,566.49");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=321.02,684.38");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=269.12,600.22");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=248.73,603.14");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=250.34,520.00");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=186.93,538.88");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=111.51,615.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=83.76,686.55");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=109.98,632.88");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=116.69,681.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=100.50,721.24");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=306.28,661.99");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=350.19,720.63");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=274.83,690.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=269.66,747.53");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=313.96,636.01");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=273.92,519.16");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=224.74,587.58");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=215.55,492.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=5.83,627.19");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=51.50,751.10");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=137.44,703.42");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=124.98,642.82");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=146.19,650.61");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=322.71,748.52");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=301.26,684.71");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=247.14,660.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=356.08,629.89");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=385.43,715.61");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=348.49,498.63");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=251.82,553.24");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=174.70,521.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=44.76,629.29");
    }

}

