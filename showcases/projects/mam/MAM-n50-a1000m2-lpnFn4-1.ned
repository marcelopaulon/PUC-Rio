
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-1
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
        @display("p=862.00,984.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=809.45,966.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=820.26,951.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=879.48,959.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=916.23,877.27");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=941.18,858.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=904.26,892.82");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=905.14,915.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=966.71,864.52");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=860.74,949.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=850.94,936.31");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=791.25,878.40");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=733.04,863.11");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=911.66,999.49");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=766.64,894.11");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=831.05,938.50");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=886.06,971.42");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=853.99,827.38");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=963.69,844.03");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=873.55,827.09");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=864.93,918.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=952.77,936.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=851.95,954.73");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=865.49,879.10");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=798.86,835.90");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=772.44,917.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=833.70,996.95");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=786.35,932.06");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=895.88,905.76");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=870.40,905.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=902.24,862.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=950.73,863.11");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=887.13,796.95");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=923.04,885.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=951.41,824.53");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=843.33,918.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=886.60,921.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=803.33,880.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=753.30,933.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=764.32,990.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=781.27,977.83");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=876.57,993.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=917.44,989.34");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=884.86,908.56");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=889.48,879.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=919.36,796.03");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=918.17,846.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=978.28,840.92");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=818.94,978.00");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=895.98,969.88");
    }

}

