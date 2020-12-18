
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-1
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
        @display("p=261.00,250.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=317.42,261.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=311.35,211.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=332.81,138.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=381.00,137.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=307.91,186.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=340.99,240.19");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=354.39,283.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=300.06,274.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=206.88,289.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=149.74,362.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=175.38,389.47");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=198.33,367.82");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=175.06,399.76");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=223.28,390.17");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=235.71,342.92");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=238.82,330.23");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=212.10,330.29");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=277.60,326.18");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=331.34,270.82");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=399.80,206.20");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=388.93,252.90");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=369.13,200.15");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=276.06,231.44");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=291.59,237.85");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=217.64,209.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=334.61,219.75");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=269.82,211.21");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=272.63,98.80");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=380.87,160.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=346.67,162.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=301.58,249.18");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=386.23,343.40");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=245.07,245.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=143.42,273.42");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=174.40,373.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=157.21,387.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=260.10,366.60");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=236.30,388.24");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=265.67,391.50");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=265.63,300.15");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=221.63,324.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=184.43,349.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=334.73,307.23");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=319.83,200.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=334.26,258.92");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=343.64,278.25");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=357.04,163.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=337.49,289.13");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=332.59,206.17");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=266.08,284.52");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=282.72,263.42");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=302.62,218.53");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=342.95,97.37");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=376.15,72.96");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=337.92,189.52");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=320.22,233.01");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=365.45,268.97");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=294.07,357.50");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=172.11,308.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=143.26,353.00");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=119.58,309.67");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=143.59,389.96");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=93.04,389.50");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=251.85,390.16");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=227.18,250.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=229.61,358.23");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=266.59,326.91");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=352.68,331.33");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=358.59,257.85");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=358.31,134.75");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=384.54,235.63");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=389.22,207.75");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=261.63,228.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=248.01,183.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=249.37,258.62");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=307.60,290.33");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=330.74,233.74");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=323.63,149.41");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=367.70,187.40");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=352.26,238.11");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=388.47,303.11");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=382.24,188.36");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=324.04,288.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=254.83,317.75");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=163.40,359.24");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=207.05,362.32");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=176.59,277.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=128.85,351.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=204.29,339.36");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=259.06,346.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=189.46,302.74");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=209.87,317.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=347.55,376.31");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=301.15,196.81");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=395.18,272.87");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=389.63,219.11");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=284.28,224.21");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=230.55,239.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=268.33,191.52");
    }

}

