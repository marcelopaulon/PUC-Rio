
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-0
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
        @display("p=509.00,9.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=472.17,47.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=510.65,64.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=484.18,118.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=450.33,179.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=427.46,204.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=363.79,127.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=346.22,94.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=372.24,136.30");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=436.04,124.35");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=455.32,210.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=359.83,188.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=392.00,189.90");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=319.80,227.05");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=284.94,224.88");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=338.47,260.94");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=264.22,233.41");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=281.12,275.15");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=208.97,310.94");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=220.47,286.09");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=195.05,271.10");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=274.69,317.19");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=317.81,288.77");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=284.61,318.67");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=307.14,307.26");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=527.57,1.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=478.73,73.77");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=546.55,84.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=458.84,166.29");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=520.97,227.48");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=415.27,229.92");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=392.63,119.93");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=309.92,88.43");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=352.79,66.69");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=474.27,156.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=450.67,231.31");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=318.64,213.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=400.06,162.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=258.22,204.10");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=293.45,276.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=362.33,240.96");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=246.13,247.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=271.50,266.00");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=219.63,325.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=240.97,199.63");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=190.01,226.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=231.57,387.70");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=393.72,348.61");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=287.36,331.26");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=324.29,300.07");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=446.37,81.07");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=489.77,58.34");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=526.82,62.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=498.95,152.37");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=475.45,244.46");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=434.76,215.31");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=363.59,72.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=345.66,27.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=321.76,78.86");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=462.60,43.28");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=423.41,186.21");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=418.71,136.91");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=306.28,192.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=322.66,184.67");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=316.30,244.69");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=266.15,281.54");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=277.78,295.72");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=288.67,351.23");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=197.04,294.59");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=245.92,213.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=167.52,257.01");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=249.24,283.37");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=236.45,344.53");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=243.96,259.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=294.58,291.34");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=505.58,107.92");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=413.82,30.32");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=534.43,77.95");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=420.89,60.32");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=366.42,174.05");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=374.34,260.87");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=442.81,164.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=411.13,168.55");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=406.40,123.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=422.86,119.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=446.66,141.86");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=370.20,191.29");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=329.28,126.02");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=345.62,296.29");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=348.48,161.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=355.97,251.06");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=223.51,234.65");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=337.39,318.69");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=131.38,368.59");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=257.52,265.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=119.12,222.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=177.63,320.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=329.32,281.35");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=375.12,335.12");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=296.08,258.74");
    }

}

