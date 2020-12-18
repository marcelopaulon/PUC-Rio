
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
        @display("p=565.00,39.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=474.82,66.33");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=545.39,133.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=577.12,84.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=564.04,84.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=497.56,151.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=545.35,109.86");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=571.23,108.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=526.84,51.41");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=633.79,7.29");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=387.79,25.15");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=532.24,96.52");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=608.10,92.68");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=471.41,46.76");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=415.87,158.57");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=515.48,52.36");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=534.00,111.98");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=604.52,40.52");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=588.88,98.37");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=456.90,40.73");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=588.02,80.84");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=620.20,85.59");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=658.51,66.96");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=428.63,179.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=497.46,167.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=536.70,66.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=569.09,57.81");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=588.88,38.04");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=453.40,58.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=578.50,161.04");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=638.09,68.63");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=627.69,73.61");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=423.60,199.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=560.18,96.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=598.73,180.92");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=435.74,62.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=501.31,0.04");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=481.53,137.98");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=581.42,212.88");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=585.02,63.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=607.12,140.01");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=437.67,153.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=513.23,192.24");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=529.11,143.43");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=553.21,31.39");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=619.70,67.14");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=397.74,22.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=475.15,165.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=647.94,96.20");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=504.10,28.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=519.50,147.39");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=524.14,66.58");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=501.21,80.09");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=575.31,34.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=548.91,44.38");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=491.03,44.20");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=560.88,186.43");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=556.76,5.97");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=500.57,58.15");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=447.24,169.95");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=536.42,151.37");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=596.40,61.19");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=470.79,79.49");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=520.04,34.11");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=483.34,73.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=559.72,118.89");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=604.69,77.40");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=521.87,105.18");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=480.28,118.07");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=541.01,54.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=526.50,127.99");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=518.24,76.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=588.53,124.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=385.11,86.94");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=514.51,119.84");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=560.16,52.47");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=640.59,26.34");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=457.17,191.73");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=463.75,67.41");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=510.16,99.67");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=479.11,25.48");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=577.51,21.71");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=427.16,92.96");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=518.45,134.54");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=563.34,27.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=511.53,16.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=474.78,102.39");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=612.39,177.71");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=624.12,98.02");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=523.72,21.38");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=660.01,9.46");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=416.83,21.38");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=488.49,107.44");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=579.16,102.11");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=565.54,156.13");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=529.49,172.84");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=470.55,114.55");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=485.92,89.74");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=541.68,29.49");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=613.97,26.35");
    }

}

