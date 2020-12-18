
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-1
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
        @display("p=389.00,923.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=350.25,939.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=424.11,935.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=342.59,909.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=327.78,912.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=312.75,997.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=286.37,916.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=272.89,967.22");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=245.92,961.76");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=244.00,864.77");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=211.82,959.39");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=244.49,928.05");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=255.23,878.30");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=196.56,931.05");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=218.98,989.80");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=218.26,947.22");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=196.23,979.84");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=196.21,969.28");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=259.50,958.55");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=345.10,955.75");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=434.59,995.82");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=503.04,996.80");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=502.56,951.16");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=557.67,925.45");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=569.89,954.72");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=377.59,953.69");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=370.21,931.68");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=419.87,853.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=356.50,903.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=329.84,873.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=331.71,902.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=279.51,898.28");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=251.54,903.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=243.77,917.89");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=147.82,864.08");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=201.41,919.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=228.74,877.72");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=265.61,874.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=183.17,920.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=264.68,943.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=293.06,961.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=205.27,991.53");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=231.03,951.55");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=232.65,988.74");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=291.51,979.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=412.72,969.73");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=560.24,994.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=435.07,897.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=499.97,979.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=651.58,976.70");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=368.72,921.11");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=314.37,906.68");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=329.20,946.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=374.26,879.28");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=398.87,980.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=309.13,987.38");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=299.94,886.78");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=301.82,974.24");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=178.84,934.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=240.48,854.31");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=169.09,983.68");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=258.39,838.61");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=289.14,871.94");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=270.00,993.58");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=242.86,985.14");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=243.53,948.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=127.49,913.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=101.67,985.38");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=336.79,996.96");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=253.42,922.89");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=428.48,918.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=462.15,970.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=506.00,939.26");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=549.57,959.65");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=560.28,959.38");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=310.45,889.35");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=439.31,953.83");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=421.77,978.17");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=291.87,841.97");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=414.02,887.61");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=250.14,937.14");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=307.72,864.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=294.84,926.97");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=213.86,926.00");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=183.73,881.02");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=214.04,866.35");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=240.86,907.08");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=307.59,942.35");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=228.81,905.89");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=145.86,953.14");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=153.09,915.56");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=165.83,959.68");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=134.55,995.12");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=228.13,927.35");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=327.29,971.97");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=423.76,947.78");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=489.05,986.53");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=456.33,939.46");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=598.55,958.03");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=564.13,945.53");
    }

}

