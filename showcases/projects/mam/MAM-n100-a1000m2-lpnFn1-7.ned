
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn1-7
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
        @display("p=120.00,286.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=191.82,230.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=169.72,230.27");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=101.81,275.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=87.61,278.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=113.87,303.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=88.34,234.54");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=68.78,221.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=86.75,167.71");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=65.64,250.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=107.75,234.77");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=18.84,125.82");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=43.14,44.60");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=59.58,44.02");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=69.66,15.81");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=85.80,100.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=130.05,167.80");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=200.12,123.67");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=80.88,145.72");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=85.67,219.09");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=158.39,182.68");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=233.04,211.28");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=212.88,231.41");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=223.95,244.19");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=234.82,174.67");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=239.70,238.30");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=205.61,273.90");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=162.17,207.89");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=169.16,183.35");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=180.33,143.09");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=139.31,191.12");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=140.43,220.29");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=211.59,258.42");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=183.84,324.20");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=266.16,344.41");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=257.08,354.36");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=173.70,389.24");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=211.31,377.11");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=207.01,357.82");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=297.82,321.64");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=330.56,260.97");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=328.92,328.81");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=263.74,399.72");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=337.63,365.62");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=418.13,371.95");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=407.18,370.89");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=381.39,365.11");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=377.20,381.14");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=353.27,460.13");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=409.89,439.09");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=424.75,457.21");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=464.31,467.30");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=419.33,406.61");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=380.25,424.33");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=378.56,435.43");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=366.82,443.68");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=375.35,414.03");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=444.90,385.36");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=338.99,460.11");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=345.58,477.86");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=357.70,562.84");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=312.80,580.82");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=289.76,490.26");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=221.38,443.14");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=203.87,400.76");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=289.19,422.85");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=274.76,371.47");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=255.47,422.86");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=258.95,382.71");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=346.36,336.65");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=299.39,341.09");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=293.99,402.25");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=289.54,436.79");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=308.02,466.53");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=271.13,424.17");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=315.62,426.07");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=306.00,399.34");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=259.86,314.48");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=346.40,313.00");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=415.14,350.89");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=434.48,399.63");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=334.80,311.11");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=317.52,336.56");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=348.26,349.69");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=411.76,395.10");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=369.90,343.52");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=277.55,222.32");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=284.39,213.69");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=325.13,194.72");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=305.69,217.11");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=306.47,168.45");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=311.45,84.74");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=350.17,86.91");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=368.14,2.14");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=340.03,11.67");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=327.53,16.33");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=275.07,20.35");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=358.09,70.94");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=338.87,47.98");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=380.87,18.34");
    }

}

