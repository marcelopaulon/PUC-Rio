
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-1
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
        @display("p=375.00,855.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=399.30,776.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=437.32,828.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=399.49,855.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=421.77,840.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=420.60,892.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=422.41,907.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=452.19,909.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=360.44,870.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=373.87,910.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=427.90,921.45");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=517.67,940.44");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=519.05,857.85");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=395.17,927.94");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=413.36,759.17");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=357.29,807.15");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=448.13,814.08");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=413.55,870.11");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=409.24,904.34");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=479.13,981.72");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=502.03,920.33");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=390.20,871.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=363.37,917.30");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=445.21,928.22");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=588.01,940.90");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=531.78,886.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=345.57,764.12");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=380.36,755.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=485.77,765.80");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=319.75,810.25");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=466.47,819.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=442.35,968.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=435.14,912.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=413.98,960.50");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=340.80,859.99");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=373.21,923.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=413.41,939.49");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=592.43,915.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=528.71,803.77");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=355.11,840.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=371.34,778.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=454.93,739.89");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=373.51,827.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=406.19,746.11");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=470.82,806.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=501.48,859.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=502.60,936.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=333.98,877.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=431.98,870.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=359.90,886.09");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=527.41,986.40");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=474.62,875.79");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=461.47,891.86");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=465.23,844.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=433.27,815.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=487.74,883.57");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=430.33,935.24");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=443.87,859.30");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=498.50,954.45");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=459.06,812.66");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=285.78,887.82");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=321.98,929.80");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=440.52,979.23");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=517.11,991.94");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=583.14,902.47");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=406.92,792.83");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=372.48,682.06");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=450.92,896.71");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=371.06,888.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=415.87,855.95");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=513.85,873.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=455.36,849.55");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=462.66,927.61");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=289.46,831.06");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=384.65,911.41");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=382.28,890.02");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=490.73,965.20");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=504.47,841.59");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=312.97,782.38");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=454.20,709.02");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=477.58,891.19");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=339.01,787.96");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=449.13,837.58");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=443.05,869.90");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=457.50,862.19");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=438.77,887.43");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=357.27,830.08");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=381.10,900.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=393.83,837.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=531.99,943.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=507.42,814.52");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=335.29,801.33");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=382.36,808.77");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=421.84,824.32");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=347.60,778.28");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=346.47,886.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=395.30,884.46");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=459.39,875.35");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=504.95,882.48");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=364.93,855.44");
    }

}

