
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
        @display("p=531.00,928.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=455.74,991.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=462.34,922.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=402.40,968.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=356.51,978.10");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=300.79,963.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=295.06,983.83");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=344.19,975.81");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=335.84,987.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=371.60,995.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=422.35,999.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=425.82,972.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=464.93,987.24");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=517.56,892.85");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=380.93,958.33");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=476.75,988.11");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=378.93,934.87");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=275.69,970.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=280.75,997.18");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=309.24,997.24");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=405.17,926.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=358.13,912.19");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=435.80,953.40");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=461.78,964.09");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=492.54,908.27");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=424.59,897.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=486.86,848.32");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=435.46,985.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=472.77,941.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=445.31,907.39");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=368.33,963.28");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=268.98,981.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=233.74,929.08");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=332.40,954.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=290.49,969.03");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=313.00,984.79");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=440.88,938.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=402.17,983.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=498.43,919.85");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=467.46,952.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=439.10,923.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=403.54,873.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=397.01,960.44");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=397.13,899.41");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=304.65,978.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=237.21,943.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=325.72,988.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=258.10,964.52");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=337.85,945.23");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=485.51,955.16");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=415.32,975.80");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=491.62,999.65");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=608.49,908.00");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=505.46,972.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=489.62,858.20");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=443.31,976.30");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=353.63,962.26");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=274.51,922.46");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=328.90,977.08");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=291.41,905.35");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=380.51,982.82");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=415.51,926.31");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=477.20,923.69");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=482.02,966.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=413.19,954.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=495.91,889.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=494.61,964.45");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=379.06,946.64");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=367.44,937.61");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=277.89,935.64");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=339.74,919.41");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=261.62,990.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=295.03,893.61");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=295.40,939.19");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=372.44,923.68");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=408.89,992.81");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=429.92,939.26");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=470.86,999.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=488.16,937.30");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=503.22,949.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=469.07,867.17");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=361.91,948.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=369.68,904.36");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=292.57,954.33");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=248.53,994.00");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=262.66,922.76");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=391.45,977.19");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=396.61,920.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=375.95,912.43");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=517.04,950.00");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=454.33,977.38");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=553.90,833.05");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=486.74,984.24");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=507.54,904.78");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=439.06,965.11");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=355.69,897.33");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=213.40,986.10");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=235.28,964.40");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=312.36,970.33");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=284.81,918.60");
    }

}

