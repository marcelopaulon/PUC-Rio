
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-5
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
        @display("p=839.00,196.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=847.17,152.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=790.91,130.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=765.51,130.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=763.66,106.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=767.14,12.43");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=819.95,76.49");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=795.36,97.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=857.46,146.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=856.79,135.14");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=875.55,205.25");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=871.18,229.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=846.26,231.78");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=896.52,210.79");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=794.18,145.23");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=753.33,150.08");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=755.65,136.21");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=713.48,108.16");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=781.66,30.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=784.89,159.44");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=856.04,119.04");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=824.63,179.16");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=847.58,175.24");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=952.66,237.37");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=866.42,217.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=858.86,175.33");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=774.56,172.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=800.03,166.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=833.05,149.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=709.33,80.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=777.51,105.51");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=778.70,6.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=910.27,94.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=737.85,66.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=885.81,209.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=870.27,93.95");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=862.21,190.42");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=916.85,148.74");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=878.69,253.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=786.52,263.61");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=913.73,191.43");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=745.94,51.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=729.35,83.67");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=790.95,116.68");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=856.22,41.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=846.73,49.92");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=732.62,42.61");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=825.10,197.25");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=822.84,44.25");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=957.58,178.63");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=861.24,249.78");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=854.92,202.27");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=808.71,178.40");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=840.38,72.79");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=762.93,72.57");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=687.21,96.28");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=802.82,77.57");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=828.12,18.03");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=875.64,84.33");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=758.42,172.07");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=890.98,169.70");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=893.86,139.82");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=967.10,169.94");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=872.29,287.86");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=784.85,245.77");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=881.33,163.40");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=760.68,117.13");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=883.73,148.02");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=823.73,168.31");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=778.05,122.01");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=706.66,56.69");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=811.55,83.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=733.16,153.83");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=906.87,201.44");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=939.22,130.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=909.10,270.91");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=897.88,241.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=751.82,214.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=880.72,178.29");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=925.70,171.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=864.81,105.30");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=747.10,122.88");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=765.87,192.38");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=812.90,32.82");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=742.35,107.51");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=875.53,125.45");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=838.51,206.53");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=907.81,155.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=801.27,215.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=890.60,275.81");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=822.66,230.92");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=896.28,259.63");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=920.09,135.09");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=779.33,139.34");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=722.68,40.67");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=776.34,54.09");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=740.17,17.72");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=894.53,101.83");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=802.09,34.99");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=911.78,219.13");
    }

}

