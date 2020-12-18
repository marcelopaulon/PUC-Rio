
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_9
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=98.96,77.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=108.75,70.97");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=91.68,147.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=54.61,173.51");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=1.83,250.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=49.57,217.74");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=119.33,221.89");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=71.32,283.63");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=92.27,161.63");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=35.10,15.29");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=132.03,9.10");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=113.63,166.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=114.02,112.89");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=49.01,324.86");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=46.18,194.85");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=165.95,265.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=79.45,333.91");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=41.75,148.87");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=161.04,130.47");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=133.31,75.69");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=121.44,199.54");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=79.00,226.78");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=11.50,242.72");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=18.85,137.40");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=116.36,145.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=11.88,351.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=106.28,91.72");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=162.94,65.86");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=170.91,139.50");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=136.89,162.35");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=24.77,225.88");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=81.51,297.36");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=19.75,259.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=198.36,266.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=110.60,305.33");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=116.44,41.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=171.74,16.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=104.46,133.93");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=80.93,125.02");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=81.56,177.72");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=53.89,257.49");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=104.38,179.09");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=133.64,236.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=100.74,241.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=91.27,34.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=50.41,83.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=147.69,127.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=61.18,129.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=55.25,161.21");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=25.95,300.06");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=48.02,140.51");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=93.82,217.29");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=147.82,316.33");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=54.79,118.03");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=89.14,70.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=51.73,19.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=122.94,180.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=66.47,141.11");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=36.62,243.70");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=81.65,237.85");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=204.68,217.86");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=113.15,354.63");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=122.87,20.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=150.11,23.48");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=175.56,55.34");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=133.78,222.95");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=94.05,182.72");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=41.51,178.96");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=140.02,212.15");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=107.69,204.09");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=118.44,256.06");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=65.20,97.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=94.49,119.65");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=165.23,121.34");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=21.43,167.97");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=121.17,234.63");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=86.31,256.21");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=130.73,249.86");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=134.60,264.70");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=91.38,306.89");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=129.68,85.77");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=131.38,65.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=177.56,81.19");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=89.05,83.45");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=14.17,103.33");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=1.31,236.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=58.04,309.68");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=138.21,197.06");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=86.96,266.52");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=33.69,90.14");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=94.41,43.94");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=72.58,117.06");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=58.40,185.81");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=80.34,159.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=4.91,212.88");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=4.62,164.02");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=140.55,183.13");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=76.00,189.00");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=176.48,130.75");
    }

}

