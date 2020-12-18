
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_5
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
        @display("p=109.88,122.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=114.74,138.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=147.15,166.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=108.67,246.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=78.07,251.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=13.22,314.12");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=18.62,289.59");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=5.41,374.89");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=134.93,147.72");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=49.99,115.85");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=25.00,172.67");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=160.08,198.48");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=186.49,236.57");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=94.10,227.33");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=75.99,304.41");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=46.05,286.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=3.79,319.74");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=112.01,104.17");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=90.42,144.11");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=95.23,176.05");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=167.85,147.50");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=193.33,219.01");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=16.34,181.01");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=65.63,264.60");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=36.41,324.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=24.11,329.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=125.90,106.72");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=62.27,130.51");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=178.12,150.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=167.09,217.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=102.88,255.92");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=132.20,229.80");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=29.56,313.29");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=76.18,355.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=22.38,367.21");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=94.89,109.83");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=98.34,122.04");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=201.96,116.55");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=169.27,165.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=103.66,193.29");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=129.97,256.81");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=73.97,375.44");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=24.65,251.24");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=23.03,381.88");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=81.85,44.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=46.15,46.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=161.50,98.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=151.54,180.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=93.17,192.74");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=60.50,241.61");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=13.53,326.54");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=69.52,211.43");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=89.25,378.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=92.99,162.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=160.35,88.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=189.07,112.79");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=223.16,204.16");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=144.79,255.70");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=62.13,302.58");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=35.60,301.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=19.25,273.92");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=38.59,367.80");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=175.38,83.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=109.77,80.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=121.61,159.47");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=159.20,124.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=189.57,199.53");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=52.22,211.21");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=39.52,346.33");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=63.40,348.41");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=16.27,396.20");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=44.49,179.34");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=150.85,76.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=100.45,148.13");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=141.31,214.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=108.57,264.53");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=130.25,266.99");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=9.91,301.43");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=102.79,314.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=7.89,387.19");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=141.72,22.32");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=135.52,133.08");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=110.01,160.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=193.16,179.98");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=77.50,187.07");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=20.38,192.58");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=98.11,364.33");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=45.74,263.63");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=68.64,384.78");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=118.19,171.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=141.71,62.25");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=126.31,216.48");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=158.28,109.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=206.37,231.66");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=34.50,264.36");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=110.59,326.37");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=29.17,283.57");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=69.29,334.35");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=88.88,81.78");
    }

}

