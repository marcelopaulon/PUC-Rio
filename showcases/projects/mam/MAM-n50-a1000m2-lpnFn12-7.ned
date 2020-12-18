
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-7
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
        @display("p=744.00,450.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=795.04,469.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=839.66,511.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=907.31,546.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=969.69,497.79");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=754.07,366.04");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=801.38,405.87");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=865.52,418.03");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=868.39,610.10");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=949.39,489.84");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=744.99,465.02");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=761.60,495.30");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=765.86,517.80");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=851.51,543.27");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=979.19,424.06");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=773.87,486.95");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=720.18,404.40");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=771.74,471.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=885.81,535.92");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=935.97,557.42");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=744.18,438.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=839.19,408.39");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=863.78,485.64");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=895.23,460.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=958.37,455.08");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=722.93,503.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=799.47,530.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=843.87,462.96");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=943.05,548.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=995.77,503.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=655.92,403.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=730.35,457.94");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=817.24,450.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=882.49,507.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=969.25,510.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=663.43,454.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=829.20,467.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=801.85,420.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=924.61,561.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=980.69,479.55");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=716.82,442.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=743.26,543.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=824.63,587.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=934.42,493.51");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=979.32,494.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=730.31,371.02");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=699.21,492.45");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=816.97,519.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=931.20,456.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=957.99,482.73");
    }

}

