
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-6
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
        @display("p=258.00,755.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=300.32,764.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=279.47,772.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=254.89,810.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=273.34,816.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=220.48,867.34");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=218.85,820.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=214.67,853.49");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=294.82,861.47");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=231.15,793.20");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=176.73,856.69");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=138.89,881.82");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=181.41,894.27");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=232.84,936.32");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=228.97,968.72");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=172.38,963.22");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=250.56,962.83");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=251.49,984.71");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=216.33,970.20");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=227.42,981.70");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=304.26,981.83");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=266.97,925.95");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=241.33,944.18");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=317.63,937.10");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=267.21,959.59");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=293.98,747.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=290.45,811.40");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=312.11,755.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=309.03,787.60");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=248.88,880.78");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=299.66,924.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=129.90,850.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=170.84,771.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=306.11,865.78");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=175.41,715.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=253.85,892.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=169.81,932.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=98.41,898.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=285.78,931.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=190.99,984.42");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=200.39,996.31");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=215.25,900.49");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=239.45,956.60");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=221.36,950.76");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=148.55,941.33");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=286.44,887.24");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=244.18,904.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=327.42,900.27");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=382.53,958.42");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=220.13,914.96");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=314.07,814.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=254.76,730.76");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=362.06,811.36");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=213.03,841.89");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=246.45,803.67");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=238.88,842.06");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=225.47,803.68");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=181.96,874.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=255.86,903.99");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=163.37,824.60");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=182.56,931.63");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=202.58,944.15");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=176.93,919.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=264.92,915.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=250.93,934.97");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=163.08,982.86");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=253.42,924.60");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=243.54,997.62");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=243.85,972.05");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=219.76,993.67");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=269.74,982.14");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=197.48,963.29");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=190.95,953.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=353.08,979.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=302.63,995.73");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=321.57,759.30");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=288.15,733.32");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=350.77,735.41");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=252.46,840.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=354.89,868.49");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=216.09,799.99");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=191.21,833.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=199.03,883.02");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=294.96,874.41");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=255.17,741.60");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=174.68,867.70");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=139.90,954.06");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=175.67,991.81");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=205.62,981.65");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=157.24,961.52");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=90.73,926.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=329.73,949.23");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=243.25,924.55");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=260.60,944.83");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=142.35,976.00");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=294.67,965.41");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=340.91,907.34");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=273.32,883.14");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=305.37,898.38");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=289.15,921.87");
    }

}

