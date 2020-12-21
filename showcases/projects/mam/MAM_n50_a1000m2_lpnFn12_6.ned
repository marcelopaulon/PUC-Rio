
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_6
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=104.46,110.27");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=174.77,122.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=88.28,119.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=85.29,94.80");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=172.59,76.66");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=97.75,135.12");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=191.78,154.81");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=149.03,144.45");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=92.84,48.86");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=30.17,109.41");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=17.98,150.06");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=200.22,135.20");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=120.04,93.85");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=151.75,106.58");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=26.17,67.93");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=121.66,142.11");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=149.35,91.97");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=148.76,179.96");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=115.10,58.03");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=105.80,86.33");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=54.32,68.98");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=186.11,131.58");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=54.75,187.81");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=173.34,97.93");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=82.27,45.52");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=62.18,59.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=133.06,162.22");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=54.55,109.69");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=163.65,71.97");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=40.84,105.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=92.87,157.55");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=208.40,212.43");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=63.92,95.81");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=76.38,88.03");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=160.83,142.37");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=23.29,88.62");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=138.40,71.17");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=86.26,196.53");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=69.20,31.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=132.91,146.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=122.28,72.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=121.89,160.12");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=93.92,62.62");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=73.92,76.26");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=1.99,111.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=100.21,208.56");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=214.73,161.74");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=19.14,167.40");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=23.05,43.11");
    }

}

