
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_9
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=148.11,47.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=175.69,41.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=81.47,90.16");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=62.91,176.10");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=69.09,158.23");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=201.78,25.03");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=154.75,26.92");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=163.62,35.55");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=10.66,245.70");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=105.66,2.38");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=122.74,134.28");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=167.41,82.16");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=24.61,31.50");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=100.11,120.13");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=36.22,88.45");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=223.72,71.12");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=196.36,51.54");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=81.10,100.79");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=40.40,168.92");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=124.98,79.72");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=139.71,72.18");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=181.28,52.48");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=58.27,137.95");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=78.52,123.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=86.97,161.90");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=163.79,62.21");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=226.58,10.19");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=68.39,96.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=7.75,100.69");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=109.76,84.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=135.04,81.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=188.27,32.93");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=97.12,109.63");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=36.59,136.20");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=80.30,144.35");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=135.41,34.98");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=192.06,89.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=100.85,60.21");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=49.68,110.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=103.13,148.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=135.01,3.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=85.41,76.44");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=120.52,180.46");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=49.20,179.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=110.35,97.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=225.13,31.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=146.67,115.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=27.39,50.83");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=158.06,168.43");
    }

}

