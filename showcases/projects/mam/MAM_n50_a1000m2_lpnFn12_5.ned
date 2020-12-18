
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_5
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
        @display("p=117.76,915.39");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=108.47,893.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=19.22,946.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=53.88,963.01");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=76.14,878.62");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=152.60,969.12");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=119.13,895.98");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=41.33,874.33");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=115.68,948.84");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=114.50,807.85");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=76.47,902.84");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=128.82,912.78");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=42.10,863.61");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=48.56,907.03");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=103.72,943.27");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=131.49,850.38");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=155.11,941.93");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=16.47,882.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=86.36,876.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=83.19,850.34");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=174.78,990.25");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=36.18,895.52");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=82.43,887.23");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=90.87,959.62");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=147.62,885.26");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=124.65,824.11");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=132.65,870.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=45.69,954.49");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=10.56,941.56");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=161.39,873.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=143.52,854.06");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=36.03,909.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=46.11,933.56");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=24.57,964.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=117.25,968.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=173.52,886.14");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=146.34,900.28");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=89.73,945.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=30.53,939.43");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=155.49,957.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=75.45,927.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=136.15,922.55");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=99.94,980.23");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=88.37,916.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=162.64,848.76");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=131.95,954.76");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=106.25,844.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=2.56,892.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=63.77,944.43");
    }

}

