
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-9
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
        @display("p=680.00,498.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=719.07,438.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=679.57,453.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=619.67,434.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=568.34,468.08");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=652.32,432.68");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=694.83,473.01");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=732.74,424.89");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=592.57,433.87");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=531.92,437.88");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=704.78,403.47");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=802.14,389.19");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=720.69,468.69");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=592.81,497.22");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=507.76,396.24");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=658.35,419.64");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=651.25,393.19");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=687.67,464.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=577.76,425.31");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=592.16,561.40");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=758.72,542.88");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=754.61,404.59");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=613.95,484.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=619.27,338.25");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=521.68,412.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=695.79,501.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=743.73,489.61");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=623.85,472.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=653.18,488.08");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=621.71,398.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=637.67,509.79");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=678.43,375.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=676.69,538.41");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=617.25,451.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=486.32,489.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=692.33,586.93");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=811.16,403.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=588.72,446.66");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=659.47,401.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=597.38,543.66");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=737.21,545.80");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=711.03,339.34");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=732.65,434.90");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=613.20,423.14");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=630.58,411.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=632.07,549.90");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=724.75,402.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=671.22,401.11");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=579.57,482.61");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=637.55,442.69");
    }

}

