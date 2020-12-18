
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_0
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
        @display("p=157.44,885.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=239.74,871.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=319.68,901.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=307.86,896.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=314.21,879.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=397.49,918.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=338.39,943.79");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=340.87,918.64");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=401.16,854.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=435.87,919.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=495.25,973.83");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=566.65,946.05");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=88.64,931.92");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=217.45,926.50");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=255.47,942.68");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=354.32,902.62");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=314.93,861.50");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=259.86,920.39");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=383.84,887.25");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=309.04,986.60");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=249.08,930.84");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=369.48,827.47");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=403.67,891.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=492.36,959.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=593.39,964.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=103.27,925.61");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=85.54,834.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=228.91,876.34");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=378.96,935.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=352.18,853.03");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=236.80,910.67");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=407.51,866.58");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=383.47,976.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=389.87,927.60");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=435.75,791.22");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=489.26,936.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=578.80,977.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=531.79,880.91");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=83.73,908.57");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=131.16,920.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=221.79,887.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=335.72,982.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=234.41,922.41");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=367.84,863.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=424.42,824.89");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=353.53,930.92");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=373.56,907.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=343.19,862.67");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=416.83,938.57");
    }

}

