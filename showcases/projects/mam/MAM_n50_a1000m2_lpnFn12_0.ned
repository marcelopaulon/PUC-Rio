
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_0
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
        @display("p=166.71,861.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=169.27,894.19");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=193.84,852.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=215.53,898.01");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=17.78,882.36");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=177.00,879.65");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=106.68,910.32");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=244.04,881.19");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=237.13,832.33");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=87.09,912.43");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=186.78,944.01");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=75.62,902.00");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=133.81,919.50");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=205.22,961.07");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=150.95,866.65");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=203.53,811.76");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=111.23,883.63");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=139.33,793.67");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=212.58,907.77");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=41.92,851.29");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=198.46,781.72");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=134.21,967.57");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=180.42,812.22");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=283.71,882.40");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=116.93,904.69");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=163.38,838.41");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=257.69,881.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=218.15,882.56");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=215.91,955.04");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=143.33,906.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=164.40,884.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=160.27,901.82");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=166.77,916.07");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=248.29,946.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=35.35,951.76");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=153.39,890.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=187.45,893.68");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=198.48,868.16");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=236.01,920.13");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=162.36,824.42");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=188.82,805.03");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=188.88,877.99");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=115.85,870.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=158.18,927.29");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=65.16,907.97");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=183.27,866.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=193.48,924.90");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=232.95,809.20");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=220.13,931.61");
    }

}

