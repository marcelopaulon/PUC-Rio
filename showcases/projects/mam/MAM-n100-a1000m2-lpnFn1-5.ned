
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn1-5
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
        @display("p=8.00,381.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=9.93,407.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=20.63,407.01");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=74.72,392.63");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=35.29,408.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=37.16,439.79");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=105.45,404.14");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=96.72,365.00");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=29.25,382.85");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=43.02,337.25");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=13.91,336.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=45.77,311.07");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=1.35,259.58");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=22.19,277.23");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=63.51,302.06");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=58.62,239.35");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=37.72,251.46");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=78.89,235.67");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=6.68,301.56");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=27.87,321.53");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=67.49,317.65");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=161.03,309.85");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=130.98,262.60");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=148.13,259.55");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=152.17,249.05");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=231.95,260.42");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=251.93,241.81");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=209.29,278.83");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=328.34,171.26");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=339.13,157.68");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=300.63,133.17");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=388.29,103.83");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=366.18,113.84");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=337.95,209.58");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=321.28,182.08");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=290.50,230.06");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=348.31,242.33");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=353.85,228.62");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=307.85,202.71");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=243.32,205.26");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=256.78,197.11");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=328.35,260.65");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=370.70,242.87");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=414.05,256.61");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=440.07,211.33");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=466.33,233.96");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=499.27,327.94");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=553.99,316.78");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=509.58,229.87");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=579.05,173.63");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=552.73,104.62");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=530.18,157.77");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=549.72,191.90");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=465.06,196.61");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=501.43,257.60");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=531.43,258.28");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=537.40,309.43");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=530.36,341.89");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=555.03,335.41");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=512.36,388.30");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=494.81,386.39");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=472.67,458.42");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=475.13,386.09");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=498.35,291.21");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=509.44,349.09");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=569.22,359.73");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=558.83,365.93");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=528.15,432.19");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=498.07,413.28");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=447.64,453.62");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=481.08,449.69");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=517.09,455.30");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=526.24,473.96");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=441.81,439.83");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=445.12,342.36");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=365.78,293.46");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=324.63,350.26");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=289.52,393.78");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=318.61,305.71");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=382.36,317.05");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=337.84,311.64");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=335.76,338.46");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=325.80,333.23");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=368.80,379.54");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=282.24,378.11");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=343.47,407.23");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=265.58,382.43");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=206.02,385.63");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=232.16,339.01");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=243.62,297.06");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=223.73,243.09");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=234.73,232.70");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=197.63,177.36");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=217.45,162.06");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=275.47,97.22");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=260.54,101.11");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=282.15,120.64");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=299.87,114.17");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=290.59,109.45");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=249.42,96.63");
    }

}

