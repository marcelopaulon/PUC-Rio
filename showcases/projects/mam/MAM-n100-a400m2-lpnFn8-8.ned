
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-8
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
        @display("p=190.00,389.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=187.35,399.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=134.83,347.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=87.31,287.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=24.55,216.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=51.39,283.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=37.76,328.67");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=22.25,343.99");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=33.38,371.74");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=7.75,355.19");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=18.41,392.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=67.82,366.47");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=110.67,365.23");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=273.30,341.59");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=95.21,388.10");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=141.35,364.81");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=94.64,276.36");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=38.12,278.91");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=48.32,242.30");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=66.19,299.33");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=53.15,379.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=35.29,393.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=7.85,376.96");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=77.65,348.13");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=148.92,350.10");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=103.76,347.41");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=245.77,358.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=187.37,360.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=120.26,346.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=123.47,289.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=34.79,241.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=68.94,283.00");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=63.55,315.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=62.95,352.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=18.01,372.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=45.83,367.79");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=51.92,356.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=79.28,337.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=50.37,308.02");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=212.64,344.44");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=220.33,327.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=196.53,300.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=123.83,225.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=37.22,227.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=39.85,314.51");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=85.71,306.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=89.63,340.19");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=83.90,371.53");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=70.02,376.40");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=44.02,387.14");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=81.03,387.55");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=121.74,397.21");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=201.28,382.99");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=172.53,367.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=232.83,327.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=156.81,261.41");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=13.05,251.06");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=62.12,188.41");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=24.75,301.82");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=23.61,325.49");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=15.49,362.68");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=38.23,290.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=95.77,356.73");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=66.20,397.77");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=97.52,374.21");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=225.51,299.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=198.68,363.36");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=150.50,340.20");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=96.60,306.33");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=16.70,229.72");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=137.79,256.89");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=6.99,305.45");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=28.60,249.00");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=108.76,331.57");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=7.88,319.66");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=50.39,395.73");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=123.97,366.30");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=160.64,314.11");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=229.28,394.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=246.18,394.26");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=170.93,336.92");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=47.95,336.86");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=102.36,178.56");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=97.92,258.69");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=85.74,251.38");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=108.86,393.36");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=27.88,361.91");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=5.36,331.24");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=4.02,391.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=34.65,347.67");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=87.96,323.88");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=173.98,395.43");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=188.70,374.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=137.13,329.19");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=19.35,280.27");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=38.69,194.43");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=146.76,306.57");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=45.12,260.80");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=55.26,346.50");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=53.08,294.41");
    }

}

