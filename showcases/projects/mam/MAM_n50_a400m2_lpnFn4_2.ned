
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_2
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=94.50,131.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=81.37,115.01");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=26.36,82.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=22.22,68.78");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=32.17,66.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=64.83,47.51");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=79.99,21.63");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=10.18,17.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=44.26,7.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=44.06,68.73");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=65.73,160.33");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=98.20,65.21");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=115.93,109.34");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=152.85,74.77");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=139.17,191.50");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=47.93,85.70");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=65.02,81.35");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=73.90,137.45");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=143.11,61.57");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=112.54,3.43");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=105.47,15.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=5.74,36.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=83.21,74.50");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=28.68,133.04");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=152.98,11.70");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=45.54,19.69");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=106.30,80.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=7.72,81.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=60.96,150.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=35.61,105.93");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=49.25,53.27");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=83.57,47.92");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=98.93,53.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=17.43,48.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=19.81,10.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=90.06,58.59");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=22.98,122.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=49.98,99.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=96.37,172.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=59.23,208.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=109.33,160.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=16.27,31.33");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=33.24,154.66");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=88.22,96.06");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=67.41,65.48");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=54.75,77.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=48.06,30.50");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=115.77,44.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=121.72,128.91");
    }

}

