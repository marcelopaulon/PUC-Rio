
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_6
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=28.28,78.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=26.89,103.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=28.04,173.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=62.53,192.74");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=126.67,252.43");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=128.42,264.08");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=118.26,178.04");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=92.10,137.84");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=37.18,128.33");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=85.83,59.62");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=69.04,36.57");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=131.64,40.91");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=127.97,54.70");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=82.87,90.26");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=47.16,88.61");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=13.16,167.23");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=64.66,166.49");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=57.54,309.61");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=214.93,278.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=128.78,161.23");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=83.55,128.77");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=30.57,37.12");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=101.74,75.18");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=89.54,48.93");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=156.22,101.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=131.89,192.32");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=53.53,134.43");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=75.20,151.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=79.41,205.47");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=146.73,200.51");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=100.26,327.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=116.19,287.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=103.55,235.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=103.29,133.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=30.93,224.92");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=24.14,89.69");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=90.04,33.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=201.21,83.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=98.35,114.53");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=2.58,80.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=1.19,195.47");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=29.48,145.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=85.20,145.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=131.80,224.95");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=104.38,275.01");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=129.26,134.05");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=99.35,59.74");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=1.23,96.47");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=18.62,62.95");
    }

}

