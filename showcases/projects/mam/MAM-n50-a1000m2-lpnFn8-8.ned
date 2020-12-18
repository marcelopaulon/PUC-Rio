
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-8
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
        @display("p=948.00,897.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=983.35,988.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=951.78,974.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=902.27,992.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=902.92,924.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=921.62,939.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=934.22,916.67");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=891.88,818.04");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=937.08,957.88");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=993.38,921.50");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=907.88,974.63");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=887.79,896.92");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=886.23,935.43");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=924.67,910.56");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=964.47,861.15");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=896.17,978.95");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=944.26,941.07");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=970.91,959.33");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=840.03,912.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=929.41,858.22");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=955.23,873.76");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=894.00,854.84");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=968.18,905.82");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=914.51,958.42");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=819.85,953.46");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=873.31,902.96");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=917.78,876.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=893.25,962.28");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=916.61,922.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=960.53,994.64");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=896.77,915.01");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=860.60,995.29");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=841.63,924.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=899.84,941.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=967.85,973.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=954.77,915.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=988.94,976.67");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=984.14,965.60");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=977.83,945.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=956.15,953.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=933.44,969.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=882.75,875.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=946.68,826.94");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=928.64,997.60");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=878.11,918.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=878.63,989.15");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=862.77,927.71");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=834.74,953.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=852.11,905.01");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=944.58,881.61");
    }

}

