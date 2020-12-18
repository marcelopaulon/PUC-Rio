
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn1-9
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
        @display("p=754.00,122.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=716.09,67.84");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=800.08,91.07");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=817.95,70.10");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=821.66,25.48");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=859.29,94.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=903.60,150.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=916.58,121.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=932.79,95.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=993.88,126.32");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=966.84,52.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=979.13,91.84");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=997.98,20.56");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=938.32,10.92");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=915.24,77.02");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=882.66,86.14");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=909.53,55.14");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=851.08,70.65");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=786.94,119.02");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=831.47,185.35");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=828.96,103.25");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=849.71,89.17");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=925.12,109.45");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=978.40,134.92");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=938.74,125.93");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=840.95,117.22");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=890.20,142.37");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=988.11,144.18");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=982.64,231.89");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=967.23,192.06");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=902.39,131.50");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=919.41,144.44");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=839.01,167.94");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=846.31,226.53");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=804.59,222.79");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=819.55,216.17");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=794.66,224.37");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=811.23,260.37");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=789.23,276.21");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=721.16,218.35");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=740.20,122.58");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=796.41,143.81");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=808.53,113.82");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=779.13,141.99");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=869.14,181.88");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=867.72,86.25");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=864.88,51.29");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=819.63,40.14");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=873.65,44.50");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=892.85,79.92");
    }

}

