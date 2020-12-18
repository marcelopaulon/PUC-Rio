
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_9
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=71.03,289.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=31.34,265.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=74.92,305.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=105.85,348.64");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=30.09,314.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=5.34,328.38");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=74.19,315.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=58.61,258.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=70.30,336.17");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=64.17,346.31");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=93.55,359.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=119.61,356.22");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=135.32,346.66");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=164.96,293.63");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=211.97,224.22");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=227.35,228.37");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=184.00,179.22");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=240.57,236.46");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=338.12,253.23");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=372.35,292.86");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=311.39,310.58");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=337.93,361.96");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=311.67,362.28");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=334.51,379.08");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=60.49,328.24");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=46.47,311.36");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=65.91,268.20");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=111.62,390.00");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=49.09,340.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=84.43,374.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=10.97,319.63");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=52.87,389.27");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=35.35,278.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=129.68,324.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=68.97,390.66");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=120.08,306.48");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=82.94,350.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=123.23,273.25");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=219.21,288.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=187.75,313.20");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=264.39,180.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=148.95,164.58");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=161.43,281.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=381.55,331.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=371.32,280.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=311.03,335.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=323.72,355.30");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=354.90,347.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=329.64,342.24");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=131.81,303.09");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=93.13,250.63");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=23.40,290.21");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=44.65,234.80");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=104.90,320.15");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=49.20,293.32");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=61.63,382.98");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=151.91,352.15");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=59.20,189.39");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=73.15,367.81");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=101.08,371.57");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=121.70,381.59");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=31.54,386.10");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=140.64,369.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=150.80,321.87");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=300.42,266.78");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=252.53,194.97");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=206.71,197.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=205.02,280.02");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=370.62,304.70");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=355.97,333.22");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=282.34,217.54");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=298.99,367.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=309.22,372.57");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=362.26,358.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=105.78,216.54");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=78.16,260.49");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=81.36,326.53");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=3.38,342.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=146.82,388.63");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=31.45,360.19");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=19.64,246.39");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,234.79");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=95.86,264.75");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=12.36,278.92");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=53.28,360.41");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=171.62,370.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=40.70,350.42");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=115.84,285.71");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=140.21,283.16");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=146.94,244.91");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=137.79,263.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=240.19,137.28");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=285.88,315.52");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=393.86,242.59");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=368.38,388.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=297.05,252.20");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=346.14,277.38");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=276.55,299.17");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=374.48,362.35");
    }

}

