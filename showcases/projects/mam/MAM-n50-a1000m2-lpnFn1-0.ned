
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn1-0
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
        @display("p=978.00,640.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=990.98,650.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=901.02,670.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=898.52,722.71");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=962.35,798.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=949.17,855.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=894.33,904.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=886.51,929.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=916.94,966.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=902.60,974.28");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=900.49,947.54");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=881.67,975.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=885.76,966.14");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=897.01,936.05");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=939.65,996.07");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=949.94,951.17");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=962.71,955.75");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=983.56,912.32");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=977.40,926.82");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=928.37,868.38");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=832.64,872.61");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=805.63,853.97");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=776.48,769.20");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=727.10,771.50");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=750.29,814.49");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=727.59,803.35");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=658.57,821.31");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=660.97,737.96");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=674.33,759.60");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=690.85,733.25");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=680.21,738.17");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=700.86,765.87");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=699.28,777.86");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=749.78,804.17");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=817.54,852.56");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=797.22,847.39");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=804.74,880.94");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=812.96,889.70");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=772.09,916.55");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=681.97,927.18");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=606.07,958.60");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=627.39,903.55");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=533.19,925.75");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=525.34,830.38");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=540.53,802.30");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=535.05,764.28");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=615.37,812.89");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=582.55,870.76");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=566.42,855.59");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=468.77,863.82");
    }

}

