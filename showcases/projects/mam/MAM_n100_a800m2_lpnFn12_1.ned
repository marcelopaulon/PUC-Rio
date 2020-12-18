
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_1
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=107.89,144.45");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=192.38,158.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=214.49,171.98");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=254.11,92.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=334.30,52.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=393.89,97.89");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=470.36,42.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=447.89,44.06");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=168.25,170.35");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=181.55,131.92");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=204.40,155.07");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=215.16,238.31");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=286.21,134.73");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=245.09,21.02");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=367.50,168.81");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=507.24,83.89");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=488.98,96.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=48.72,82.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=129.84,197.68");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=135.49,224.37");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=234.84,94.06");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=250.40,111.09");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=423.94,31.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=334.96,86.95");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=476.86,138.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=410.54,67.15");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=27.17,50.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=163.26,117.56");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=210.05,204.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=290.47,230.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=206.06,52.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=241.82,60.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=302.40,94.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=410.18,88.97");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=428.14,69.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=129.40,171.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=85.25,68.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=246.46,127.36");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=199.19,210.44");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=174.61,109.17");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=320.78,64.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=353.72,99.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=533.95,96.61");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=447.72,60.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=128.69,45.52");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=120.18,107.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=166.98,146.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=227.02,76.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=287.34,8.61");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=374.33,111.73");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=373.34,60.54");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=549.84,50.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=407.55,0.09");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=110.18,76.07");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=106.12,237.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=189.74,178.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=243.13,240.63");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=170.96,85.55");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=334.93,29.11");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=372.31,122.06");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=421.59,80.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=404.86,56.30");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=139.59,58.94");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=131.78,156.23");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=192.19,254.16");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=231.57,170.22");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=257.97,74.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=361.84,54.72");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=310.51,55.16");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=419.65,44.63");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=376.22,84.84");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=144.99,89.59");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=109.63,161.05");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=254.99,149.24");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=252.27,194.24");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=269.18,40.67");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=249.81,5.08");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=338.16,149.97");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=453.23,19.34");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=401.49,20.08");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=100.59,110.09");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=120.66,120.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=214.25,158.91");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=176.53,216.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=200.97,135.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=380.68,132.60");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=470.46,69.19");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=455.52,86.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=359.06,64.36");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=86.82,38.44");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=31.41,115.52");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=142.53,115.42");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=145.54,218.70");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=264.87,116.92");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=425.57,14.15");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=412.95,117.02");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=486.16,48.16");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=430.95,133.96");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=142.60,30.78");
    }

}

