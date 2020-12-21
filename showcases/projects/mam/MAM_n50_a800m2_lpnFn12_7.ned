
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_7
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=184.64,117.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=210.23,67.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=258.14,119.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=179.14,105.85");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=135.06,89.96");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=251.25,77.80");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=225.61,126.49");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=297.62,136.80");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=192.28,105.78");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=103.10,113.59");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=96.37,146.01");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=215.90,29.41");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=246.22,99.74");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=195.94,45.71");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=19.59,58.86");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=165.84,212.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=222.82,52.34");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=205.23,76.91");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=155.90,102.37");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=127.53,66.94");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=265.36,94.00");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=268.94,59.72");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=220.34,136.70");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=131.18,128.90");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=120.89,148.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=237.66,116.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=295.24,39.31");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=298.66,156.77");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=199.53,188.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=140.30,108.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=194.76,129.58");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=203.90,96.80");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=286.55,29.58");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=109.92,51.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=65.42,89.68");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=213.68,159.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=159.94,19.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=266.59,80.34");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=145.13,81.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=118.89,133.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=101.59,86.68");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=251.10,128.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=269.09,114.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=176.69,77.19");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=141.19,182.18");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=180.70,160.99");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=247.48,21.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=274.49,131.30");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=118.54,178.44");
    }

}

