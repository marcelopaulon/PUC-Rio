
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-0
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
        @display("p=437.00,624.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=424.16,700.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=420.37,799.65");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=407.76,801.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=348.63,804.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=359.62,793.18");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=301.24,830.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=218.40,883.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=271.28,877.72");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=309.03,930.40");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=304.12,967.33");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=339.76,890.58");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=359.77,906.19");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=470.84,576.68");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=465.96,707.07");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=388.88,845.22");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=424.36,759.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=359.08,880.08");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=344.89,790.27");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=228.07,824.67");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=282.66,955.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=367.92,861.67");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=261.95,887.82");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=289.93,963.46");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=277.62,842.72");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=307.37,977.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=385.26,591.95");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=507.68,678.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=436.56,761.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=478.16,748.09");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=365.95,891.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=311.03,815.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=295.46,861.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=163.98,858.81");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=285.07,809.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=341.15,855.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=254.41,954.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=325.62,840.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=424.98,896.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=352.57,674.18");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=415.12,650.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=491.07,749.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=478.52,815.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=403.17,781.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=345.80,708.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=262.48,814.07");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=123.64,904.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=202.34,814.31");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=320.48,993.98");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=336.74,967.21");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=397.75,965.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=395.38,881.68");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=452.51,600.59");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=412.20,607.63");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=476.06,849.89");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=333.30,742.77");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=371.30,805.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=304.91,854.25");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=265.94,827.95");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=247.43,853.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=281.23,886.80");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=231.94,887.45");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=290.98,932.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=325.50,879.23");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=374.39,945.13");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=343.03,642.16");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=430.52,669.56");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=444.95,791.45");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=411.71,835.89");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=369.31,828.37");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=275.21,793.33");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=358.93,757.72");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=171.06,907.00");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=237.80,845.40");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=311.03,944.54");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=325.79,960.06");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=269.24,911.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=311.40,918.77");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=427.25,607.44");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=434.78,703.60");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=454.60,844.34");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=437.94,809.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=427.24,820.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=340.82,780.61");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=356.70,864.46");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=187.53,943.38");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=247.55,813.66");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=301.05,946.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=298.04,911.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=245.28,890.64");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=291.05,890.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=474.84,648.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=372.38,679.43");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=456.24,753.89");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=473.83,833.41");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=384.88,720.09");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=372.34,781.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=296.08,840.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=208.13,878.52");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=247.85,971.98");
    }

}

