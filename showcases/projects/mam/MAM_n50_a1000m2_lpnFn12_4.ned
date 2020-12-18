
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_4
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
        @display("p=61.17,984.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=39.76,893.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=51.80,824.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=63.53,862.49");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=115.35,916.81");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=89.90,988.23");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=23.38,875.35");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=36.02,805.93");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=131.75,818.05");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=167.81,877.49");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=122.26,960.47");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=35.80,906.80");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=10.18,778.76");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=112.98,846.71");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=84.15,857.21");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=82.24,945.08");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=24.33,888.79");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=68.22,895.12");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=125.86,788.74");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=53.73,876.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=31.64,956.14");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=100.07,827.07");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=67.40,839.56");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=101.36,798.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=168.76,889.05");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=49.55,952.58");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=65.99,957.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=93.68,809.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=26.01,844.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=67.01,828.70");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=19.08,998.72");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=129.12,895.89");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=53.87,732.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=44.72,868.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=92.17,880.46");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=9.80,985.44");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=61.19,925.76");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=85.52,746.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=21.47,800.79");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=79.86,889.78");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=39.85,968.05");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=15.71,903.33");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=48.76,844.28");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=33.13,858.71");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=129.60,850.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=9.93,930.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=34.74,881.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=0.11,834.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=134.73,806.05");
    }

}

