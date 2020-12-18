
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_3
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
        @display("p=162.67,974.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=218.84,932.24");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=215.35,914.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=159.77,889.92");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=208.92,891.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=181.54,848.88");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=45.21,902.22");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=186.53,972.90");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=271.81,857.40");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=215.64,837.76");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=110.71,937.52");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=195.68,904.98");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=207.40,795.91");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=17.48,870.32");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=151.67,965.00");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=153.13,954.98");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=175.55,987.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=224.86,885.95");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=197.66,930.95");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=274.22,813.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=44.96,918.42");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=82.91,981.52");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=145.82,885.17");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=122.29,929.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=229.06,850.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=240.98,952.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=244.78,913.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=102.39,918.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=246.94,942.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=188.45,953.18");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=240.94,862.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=66.34,856.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=175.96,883.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=203.00,833.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=102.39,887.28");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=198.80,975.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=139.05,966.44");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=230.69,981.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=141.45,918.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=283.98,878.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=227.03,868.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=73.89,874.38");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=69.71,962.00");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=244.51,977.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=264.64,849.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=180.42,871.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=183.65,892.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=191.44,823.59");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=82.97,934.44");
    }

}

