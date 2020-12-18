
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_5
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
        @display("p=8.13,919.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=41.64,929.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=41.00,974.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=0.20,969.43");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=36.03,963.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=41.62,882.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=65.95,908.23");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=108.30,982.72");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=58.87,980.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=64.77,959.72");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=108.20,970.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=101.76,947.75");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=128.85,935.20");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=20.24,871.18");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=17.48,886.22");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=28.91,941.09");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=3.45,992.95");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=14.10,967.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=48.41,867.57");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=58.93,922.68");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=119.28,979.49");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=22.67,986.85");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=82.92,987.73");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=171.31,951.90");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=36.25,892.61");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=124.25,908.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=16.97,827.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=83.19,907.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=23.70,950.64");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=10.94,957.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=50.30,936.01");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=59.82,870.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=74.65,924.81");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=97.15,960.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=21.47,902.33");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=48.25,949.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=73.11,975.45");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=116.77,878.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=106.84,838.84");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=20.50,929.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=92.25,935.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=114.06,939.77");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=9.31,945.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=128.42,953.97");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=42.48,901.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=149.95,854.76");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=147.52,980.65");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=38.79,996.59");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=111.62,960.91");
    }

}

