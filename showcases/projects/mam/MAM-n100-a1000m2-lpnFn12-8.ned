
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-8
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
        @display("p=137.00,728.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=146.81,719.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=77.44,665.13");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=85.35,654.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=38.19,657.90");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=37.50,598.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=23.71,507.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=12.01,510.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=86.51,464.64");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=83.87,758.32");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=147.17,739.15");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=116.65,577.32");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=57.41,731.22");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=29.25,648.67");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=7.02,563.54");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=44.79,494.50");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=45.23,426.42");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=57.01,391.52");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=200.35,717.08");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=89.26,690.50");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=153.73,651.76");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=9.21,656.42");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=14.96,622.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=29.17,606.93");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=47.85,554.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=8.46,601.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=63.28,476.96");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=83.40,725.79");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=170.35,745.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=8.54,633.65");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=166.16,601.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=56.46,596.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=22.35,596.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=34.93,500.49");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=88.33,494.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=72.29,398.55");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=131.69,716.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=124.98,673.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=56.42,660.96");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=68.37,631.63");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=116.33,618.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=81.68,613.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=33.99,521.45");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=31.45,559.37");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=97.87,471.13");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=130.75,745.00");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=136.85,794.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=106.04,590.08");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=164.15,715.82");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=53.62,643.25");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=69.92,684.83");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=103.67,559.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=18.07,547.38");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=82.36,528.76");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=225.26,705.46");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=122.65,711.68");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=128.15,684.13");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=139.03,659.67");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=31.90,744.71");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=36.52,630.11");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=89.92,433.95");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=43.31,514.73");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=56.24,500.51");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=119.06,696.43");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=236.38,708.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=101.40,724.92");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=162.45,636.82");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=49.95,676.78");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=134.35,579.91");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=38.48,530.96");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=16.04,443.07");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=163.49,408.25");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=111.67,762.42");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=93.66,732.52");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=108.73,630.67");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=68.89,619.82");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=65.51,655.80");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=87.26,596.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=25.38,452.48");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=3.51,520.81");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=101.39,506.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=144.13,684.95");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=160.07,770.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=111.37,687.09");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=96.33,625.61");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=26.75,668.72");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=37.16,581.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=12.07,426.42");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=80.43,581.61");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=112.29,403.43");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=70.68,761.39");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=62.81,750.24");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=58.95,628.23");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=153.15,629.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=38.85,567.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=0.36,688.59");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=14.72,453.94");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=68.35,493.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=75.95,425.13");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=165.03,791.60");
    }

}

