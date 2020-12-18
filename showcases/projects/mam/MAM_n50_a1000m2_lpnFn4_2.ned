
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_2
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=42.45,824.00");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=59.41,829.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=84.49,852.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=156.14,826.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=60.81,815.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=117.61,789.97");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=150.67,842.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=149.37,855.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=203.39,861.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=174.21,939.92");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=184.28,955.85");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=158.55,894.23");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=104.76,878.50");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=17.24,821.38");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=15.94,802.29");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=125.62,926.74");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=180.77,830.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=100.80,736.59");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=155.42,808.10");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=215.26,888.09");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=105.51,852.54");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=211.21,929.45");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=241.49,891.40");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=226.24,955.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=135.51,939.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=41.61,870.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=112.24,804.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=56.49,865.61");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=24.87,813.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=166.39,800.08");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=71.61,897.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=186.93,847.57");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=110.17,781.53");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=188.83,893.50");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=129.01,841.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=171.23,912.51");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=252.07,924.27");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=158.87,921.71");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=64.98,919.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=1.36,805.31");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=46.11,748.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=79.37,931.34");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=202.40,830.68");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=85.06,787.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=152.68,753.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=172.71,771.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=203.62,882.52");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=185.00,771.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=152.66,949.91");
    }

}

