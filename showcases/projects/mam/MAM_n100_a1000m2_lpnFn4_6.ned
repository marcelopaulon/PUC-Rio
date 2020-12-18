
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_6
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
        @display("p=120.96,898.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=159.72,821.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=175.50,867.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=231.13,852.56");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=235.51,883.04");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=237.43,904.43");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=223.20,861.21");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=202.44,840.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=167.57,907.81");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=257.16,906.45");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=218.49,939.63");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=253.63,958.68");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=181.87,950.15");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=211.74,918.68");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=255.35,968.95");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=212.01,999.57");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=258.32,874.79");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=318.01,943.95");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=376.19,940.52");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=336.81,962.54");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=330.75,917.76");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=336.44,939.97");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=313.92,967.71");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=232.49,977.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=95.45,882.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=130.88,894.61");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,811.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=130.23,845.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=294.85,893.37");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=319.67,850.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=190.63,874.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=220.84,843.57");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=183.88,840.22");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=141.66,935.47");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=265.58,976.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=258.76,937.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=241.42,932.26");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=177.41,966.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=273.66,843.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=261.39,993.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=142.53,982.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=272.95,941.38");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=298.68,853.41");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=389.42,854.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=336.44,901.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=302.55,926.87");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=411.19,888.65");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=347.48,947.83");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=293.76,956.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=31.62,830.99");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=129.59,909.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=158.39,901.24");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=179.84,856.53");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=227.33,811.77");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=172.30,922.33");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=286.87,876.93");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=135.36,835.77");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=223.61,825.63");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=208.41,907.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=295.48,908.69");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=199.54,958.44");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=242.99,944.22");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=194.10,987.51");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=191.57,861.46");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=314.41,956.82");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=180.06,990.58");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=209.33,880.21");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=303.58,943.01");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=439.29,931.10");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=275.93,996.29");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=361.86,985.92");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=366.05,916.03");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=368.42,931.38");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=243.05,969.73");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=18.61,879.18");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=115.90,967.62");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=220.45,792.45");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=152.69,865.17");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=229.74,870.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=223.93,917.01");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=215.80,955.79");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=287.75,838.75");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=178.05,936.87");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=190.00,970.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=273.00,928.42");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=149.39,909.22");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=202.72,979.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=169.65,986.20");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=188.38,898.73");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=215.45,980.21");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=130.62,965.27");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=293.19,862.87");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=229.87,937.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=453.91,923.24");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=373.59,880.02");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=305.49,913.75");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=402.03,977.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=273.08,985.40");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=162.00,939.91");
    }

}

