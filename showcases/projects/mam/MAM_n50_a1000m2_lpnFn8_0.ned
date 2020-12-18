
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_0
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
        @display("p=29.68,956.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=81.38,941.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=45.22,947.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=61.52,954.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=156.46,967.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=120.11,913.52");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=105.52,887.76");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=26.30,968.11");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=46.54,927.23");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=113.19,967.14");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=110.73,985.18");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=133.98,994.55");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=105.75,924.84");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=152.27,868.76");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=29.59,927.33");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=100.11,963.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=97.32,946.20");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=14.64,902.76");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=153.01,891.31");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=97.20,974.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=162.15,904.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=8.28,893.69");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=128.30,949.26");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=30.50,898.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=75.23,908.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=212.02,999.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=109.05,954.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=133.61,980.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=52.56,906.24");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=39.21,882.36");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=5.55,912.29");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=66.46,995.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=145.28,992.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=129.15,937.40");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=9.88,865.13");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=59.45,870.67");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=94.44,843.92");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=141.51,972.04");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=37.55,977.29");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=195.98,950.22");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=117.63,930.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=146.22,931.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=61.32,967.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=94.15,879.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=133.33,966.15");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=82.39,919.71");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=117.98,993.07");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=115.36,878.24");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=110.71,853.29");
    }

}

