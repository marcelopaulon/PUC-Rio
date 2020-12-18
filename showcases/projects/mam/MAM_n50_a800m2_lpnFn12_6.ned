
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_6
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=65.41,78.62");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=101.92,29.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=170.38,80.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=187.95,86.96");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=101.59,148.99");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=58.13,93.11");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=99.36,3.18");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=103.41,135.84");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=222.88,86.79");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=50.13,115.83");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=92.41,78.67");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=33.13,0.53");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=230.72,60.03");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=190.41,133.72");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=113.49,190.86");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=5.29,130.58");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=51.06,51.81");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=138.35,116.51");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=126.04,96.34");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=131.97,68.47");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=66.31,43.59");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=129.10,3.59");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=239.75,100.83");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=237.06,135.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,66.89");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=55.00,130.53");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=99.79,39.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=199.62,143.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=174.32,137.49");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=112.45,45.56");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=29.21,126.72");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=66.27,0.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=141.76,23.95");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=200.94,181.47");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=100.88,122.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=89.70,104.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=19.99,41.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=168.37,178.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=161.98,64.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=148.73,75.54");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=135.94,55.57");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=198.44,12.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=200.91,41.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=175.22,100.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=77.27,64.97");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=42.34,96.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=160.49,52.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=225.81,7.38");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=198.56,74.88");
    }

}

