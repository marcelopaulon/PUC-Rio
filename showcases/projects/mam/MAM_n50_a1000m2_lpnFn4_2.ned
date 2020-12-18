
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_2
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
        @display("p=59.57,829.39");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=103.84,802.95");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=89.26,783.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=172.32,790.71");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=248.58,815.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=258.89,814.14");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=237.85,785.06");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=194.18,717.58");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=211.26,737.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=236.20,819.86");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=199.95,795.90");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=200.25,783.59");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=80.36,949.01");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=140.97,814.33");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=151.86,762.30");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,775.68");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=185.01,830.68");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=313.29,849.05");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=212.86,832.50");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=284.88,780.88");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=246.00,674.10");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=257.36,733.71");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=144.84,828.71");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=236.30,773.74");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=197.42,748.75");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=128.30,929.00");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=76.07,844.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=87.90,829.15");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=151.96,715.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=98.31,794.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=169.29,849.97");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=228.22,889.93");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=313.69,793.12");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=116.02,726.97");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=188.97,781.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=267.16,868.19");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=162.05,781.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=131.13,852.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=170.73,863.07");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=70.92,818.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=121.48,815.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=21.37,738.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=228.64,736.02");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=255.18,840.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=338.16,859.40");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=230.09,810.87");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=104.46,752.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=130.98,755.83");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=238.15,887.13");
    }

}

