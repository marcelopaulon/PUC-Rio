
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_2
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=54.68,253.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=94.46,232.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=90.04,209.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=87.07,224.46");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=112.99,231.33");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=137.23,204.08");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=131.22,325.51");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=102.56,271.65");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=185.63,217.23");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=137.36,239.25");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=101.46,142.58");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=211.45,222.82");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=184.81,279.06");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=163.85,371.58");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=73.74,198.41");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=81.89,239.70");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=56.47,192.16");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=4.15,260.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=103.33,211.44");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=215.04,240.11");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=58.42,274.95");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=35.21,248.39");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=108.31,281.85");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=165.92,255.99");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=49.99,163.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=137.39,227.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=151.46,215.77");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=151.48,347.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=69.91,180.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=12.92,278.95");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=33.78,176.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=70.65,235.19");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=145.98,252.69");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=154.97,202.42");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=148.79,373.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=54.72,205.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=149.16,225.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=140.02,261.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=86.33,265.32");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=43.66,269.47");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=151.24,106.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=127.30,295.42");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=2.82,283.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=91.85,184.93");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=67.61,132.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=69.45,212.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=98.07,222.06");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=121.23,198.94");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=181.38,324.99");
    }

}

