
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-6
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
        @display("p=129.00,949.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=185.30,884.85");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=122.34,911.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=214.36,872.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=166.63,951.04");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=160.72,979.39");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=191.95,851.40");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=195.51,861.89");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=217.01,776.37");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=156.62,920.96");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=68.20,1000.00");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=244.57,846.89");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=119.32,893.18");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=172.63,883.15");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=216.46,966.69");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=182.70,902.39");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=243.10,827.83");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=123.00,841.39");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=242.04,885.89");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=179.87,914.82");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=118.45,982.75");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=161.59,861.44");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=217.45,896.86");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=191.87,924.40");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=248.28,926.90");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=153.04,952.17");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=135.60,840.47");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=141.31,953.66");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=270.12,930.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=154.77,900.41");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=198.94,982.43");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=183.86,832.63");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=73.35,980.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=192.47,815.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=239.10,938.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=115.87,955.00");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=257.68,897.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=192.31,952.63");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=214.64,933.20");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=98.29,946.04");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=119.55,934.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=137.73,917.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=190.51,938.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=132.11,883.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=184.27,990.09");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=100.73,884.24");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=116.74,882.39");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=109.94,925.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=180.93,842.78");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=142.82,971.13");
    }

}

