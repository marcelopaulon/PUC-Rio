
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_4
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=71.83,113.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=136.13,152.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=66.00,157.80");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=69.96,168.43");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=66.44,256.73");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=92.37,257.62");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=102.47,277.20");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=73.91,351.49");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=72.95,295.10");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=93.72,224.18");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=116.52,229.74");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=146.61,163.73");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=118.98,75.17");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=59.75,32.40");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=221.20,178.58");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=48.70,189.24");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=55.34,146.23");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=1.31,225.79");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=90.64,239.70");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=127.14,257.09");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=115.59,310.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=135.10,264.24");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=82.14,135.29");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=58.64,186.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=197.44,227.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=46.36,108.09");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=115.66,112.98");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=150.27,140.03");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=79.48,159.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=61.98,87.07");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=50.97,285.73");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=166.56,223.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=82.49,250.91");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=9.03,329.25");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=62.05,352.02");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=151.52,222.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=35.71,200.24");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=109.25,132.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=103.78,65.53");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=80.38,93.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=231.30,133.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=112.56,90.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=108.71,188.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=78.86,277.88");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=172.14,293.29");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=179.92,253.72");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=123.26,335.58");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=160.91,301.67");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=68.37,197.52");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=154.64,169.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=235.20,191.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=96.82,112.28");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=50.60,129.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=84.69,177.47");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=49.25,165.29");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=105.78,153.28");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=34.95,265.73");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=42.41,340.35");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=77.84,208.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=116.69,392.53");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=31.48,283.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=72.63,179.39");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=117.14,203.84");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=138.58,132.14");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=93.50,142.81");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=137.91,62.96");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=150.61,122.61");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=59.35,230.87");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=17.79,223.98");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=96.57,193.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=12.88,267.00");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=83.04,287.97");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=134.50,372.05");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=119.77,217.77");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=94.88,132.59");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=138.01,254.07");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=66.75,128.23");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=174.20,87.78");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=94.81,165.84");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=77.83,227.82");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=41.18,155.40");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=55.83,75.55");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=62.24,293.52");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=81.19,264.92");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=66.17,314.57");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=76.25,335.18");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=145.98,245.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=25.12,249.87");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=110.25,212.94");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=195.29,195.26");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=177.49,107.14");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=23.06,175.79");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=119.58,170.81");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=109.68,122.58");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=128.29,118.50");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=52.26,259.50");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=157.10,186.56");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=125.13,272.22");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=85.18,349.48");
    }

}

