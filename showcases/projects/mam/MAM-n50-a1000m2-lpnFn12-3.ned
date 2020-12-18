
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-3
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
        @display("p=547.00,899.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=580.81,909.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=552.42,959.04");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=514.48,918.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=499.25,968.56");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=460.56,864.52");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=570.99,902.32");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=539.68,979.29");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=529.40,941.30");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=484.97,958.91");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=556.88,897.07");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=640.89,875.05");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=550.29,945.05");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=493.03,924.39");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=515.25,974.88");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=557.50,835.51");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=611.40,932.08");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=586.25,919.80");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=478.81,975.93");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=505.33,960.39");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=542.26,924.55");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=567.88,938.08");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=524.64,983.44");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=612.93,904.65");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=446.98,943.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=502.23,888.81");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=620.52,888.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=513.70,997.09");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=522.59,824.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=507.02,928.45");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=598.54,834.46");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=517.82,897.94");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=532.74,907.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=524.43,915.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=420.68,920.97");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=471.36,884.20");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=616.85,863.01");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=554.61,869.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=483.71,915.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=506.96,986.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=529.09,880.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=591.31,965.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=646.10,931.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=529.51,897.31");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=494.76,949.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=595.74,950.54");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=576.72,855.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=539.05,955.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=454.28,922.06");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=468.34,953.08");
    }

}

