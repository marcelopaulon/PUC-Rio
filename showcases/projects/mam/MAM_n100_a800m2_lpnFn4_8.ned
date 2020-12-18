
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_8
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
        @display("p=12.67,741.29");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=65.34,743.95");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=68.59,723.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=65.33,701.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=39.18,721.54");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=62.74,713.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=66.35,789.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=53.10,798.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=20.58,763.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=105.92,734.91");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=86.04,704.73");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=99.83,600.44");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=157.23,561.73");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=186.86,562.23");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=174.95,566.03");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=167.67,640.17");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=195.55,731.56");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=227.88,724.94");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=192.80,636.05");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=156.69,634.95");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=203.59,707.27");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=145.70,661.28");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=147.35,649.65");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=169.68,691.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=91.54,693.76");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=11.56,669.94");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=102.77,762.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=80.85,725.18");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=104.30,645.10");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=85.75,662.49");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=93.54,683.57");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=77.78,756.31");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=33.00,781.91");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=27.11,742.81");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=90.05,716.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=76.76,780.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=130.77,564.40");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=234.02,594.82");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=199.11,567.83");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=173.35,584.33");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=226.99,642.81");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=214.65,738.94");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=293.39,752.85");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=187.14,623.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=156.39,598.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=265.16,680.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=128.79,619.89");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=208.35,691.93");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=167.04,660.64");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=49.46,711.60");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=59.06,777.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=0.71,719.03");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=75.14,690.44");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=110.21,671.04");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=24.62,675.13");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=154.83,738.79");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=156.66,798.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=24.86,790.45");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=31.52,730.88");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=105.10,750.43");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=50.27,738.40");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=125.09,652.50");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=166.27,620.99");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=138.37,581.34");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=161.57,577.74");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=151.18,610.89");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=217.20,637.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=207.60,676.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=110.67,608.83");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=168.89,602.40");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=115.70,753.90");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=121.15,641.29");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=201.02,624.85");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=166.75,707.23");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=97.45,657.79");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=4.60,783.12");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=99.42,783.53");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=62.11,630.59");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=39.57,744.90");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=49.16,722.62");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=0.48,681.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=91.31,728.32");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=11.10,797.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=1.27,793.59");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=115.11,729.14");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=79.65,675.28");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=139.21,612.17");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=172.17,541.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=204.79,556.63");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,558.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=93.90,626.81");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=191.52,740.74");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=262.36,760.45");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=180.77,636.48");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=252.42,613.46");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=226.27,678.27");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=51.04,635.62");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=124.59,736.94");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=163.01,767.65");
    }

}

