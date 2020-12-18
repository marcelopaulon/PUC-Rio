
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_0
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=112.85,902.75");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=149.32,878.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=229.57,848.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=303.33,840.50");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=304.62,851.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=305.23,888.67");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=292.94,823.82");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=342.38,741.64");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=336.52,753.57");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=283.26,764.22");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=222.63,732.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=208.99,645.35");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=235.26,581.56");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=253.75,585.86");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=242.31,591.46");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=180.95,565.89");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=159.60,495.89");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=174.73,507.00");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=113.87,430.42");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=175.90,395.05");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=249.66,357.17");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=204.87,305.59");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=220.60,346.36");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=160.79,276.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=107.11,915.02");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=152.98,895.91");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=168.44,790.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=238.04,766.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=347.13,761.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=230.49,870.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=327.67,875.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=238.88,838.57");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=370.46,774.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=429.55,751.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=315.11,674.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=167.14,722.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=211.09,655.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=298.95,578.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=232.19,670.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=317.06,556.92");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=178.79,603.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=162.80,485.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=129.44,593.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=116.79,358.56");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=227.64,449.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=305.45,372.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=213.25,289.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=241.15,428.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=166.08,294.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=13.81,947.00");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=139.31,828.13");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=78.49,851.82");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=189.36,888.23");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=346.67,913.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=292.35,918.76");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=241.46,911.11");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=283.15,801.83");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=310.08,830.61");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=427.08,788.47");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=206.52,800.54");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=253.24,666.00");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=270.39,634.23");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=208.21,570.91");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=265.95,596.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=223.71,584.86");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=268.33,535.70");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=124.49,490.05");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=188.70,504.05");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=110.54,392.32");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=249.86,373.21");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=218.10,388.93");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=176.90,260.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=149.57,413.73");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=140.88,203.49");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=120.41,858.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=159.80,878.84");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=158.54,919.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=253.55,848.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=205.79,853.72");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=320.81,855.26");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=286.94,948.30");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=374.45,845.97");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=283.20,730.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=357.38,723.86");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=259.77,777.32");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=168.25,681.70");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=165.26,702.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=164.82,594.13");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=323.05,622.42");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=266.80,555.00");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=117.36,555.90");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=88.49,531.34");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=204.24,427.47");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=94.05,424.81");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=128.79,437.37");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=292.84,406.33");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=157.68,323.78");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=187.55,333.63");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=241.00,281.00");
    }

}

