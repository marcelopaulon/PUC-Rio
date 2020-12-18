
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-5
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
        @display("p=390.00,86.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=324.97,120.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=339.84,111.65");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=368.55,60.67");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=380.89,155.33");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=340.65,160.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=310.84,125.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=388.50,167.47");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=475.13,174.74");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=509.94,153.83");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=478.01,138.05");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=492.77,204.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=503.54,215.57");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=473.09,104.31");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=283.88,62.92");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=318.22,135.93");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=401.95,35.69");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=335.68,176.60");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=369.56,180.98");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=324.69,153.99");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=301.77,118.13");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=459.45,200.70");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=512.20,77.20");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=479.01,119.70");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=549.73,220.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=492.88,215.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=320.46,52.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=266.92,115.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=365.76,197.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=395.20,53.57");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=425.04,200.61");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=352.43,165.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=298.14,143.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=329.12,211.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=482.79,160.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=532.93,91.66");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=524.95,137.45");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=527.77,149.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=565.39,252.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=465.44,54.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=354.66,206.68");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=281.27,112.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=454.89,10.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=382.84,123.28");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=305.65,161.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=260.01,98.75");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=421.12,115.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=430.06,125.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=554.78,115.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=438.67,50.05");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=407.91,247.78");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=560.71,179.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=443.35,22.36");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=259.43,61.60");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=417.28,136.63");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=356.75,97.73");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=397.54,98.47");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=260.34,185.35");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=314.51,196.73");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=335.59,127.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=449.06,165.27");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=479.82,231.27");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=513.36,52.62");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=554.26,239.95");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=521.88,249.86");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=298.56,73.19");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=248.59,149.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=348.90,73.34");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=332.80,0.10");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=369.69,136.82");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=312.17,237.13");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=324.82,102.51");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=299.15,197.87");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=512.21,118.25");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=542.49,179.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=402.85,157.64");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=469.27,150.48");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=553.20,265.73");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=446.02,134.98");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=273.10,64.48");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=344.11,146.55");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=381.70,63.82");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=457.58,173.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=356.29,183.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=292.01,206.11");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=394.84,190.81");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=511.02,237.92");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=496.83,154.88");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=466.18,214.30");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=523.34,220.00");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=549.02,145.89");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=396.00,136.63");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=324.20,175.35");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=309.64,82.18");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=336.63,34.07");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=415.89,168.24");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=369.24,101.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=299.57,43.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=359.30,140.23");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=514.72,93.43");
    }

}

