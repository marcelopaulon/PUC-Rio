
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_0
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
        @display("p=113.46,330.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=113.09,306.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=117.43,350.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=166.79,286.96");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=193.71,244.36");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=173.12,251.73");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=89.28,233.11");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=45.28,364.01");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=179.27,347.26");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=192.78,333.17");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=224.79,243.39");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=245.73,246.04");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=196.88,264.84");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=152.99,275.23");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=53.22,263.57");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=120.48,261.28");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=145.31,343.86");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=203.39,302.76");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=172.80,309.51");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=159.46,206.12");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=123.11,316.81");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=52.55,312.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=92.17,362.93");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=22.82,375.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=147.84,242.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=156.53,159.05");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=141.63,257.52");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=116.12,294.87");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=65.28,263.81");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=60.33,339.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=31.30,357.17");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=254.86,331.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=220.99,167.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=224.04,315.82");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=52.07,280.17");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=194.18,369.14");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=142.06,275.60");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=122.26,338.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=186.28,360.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=206.48,213.34");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=148.96,227.00");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=82.61,278.09");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=70.23,289.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=145.44,364.09");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=95.06,313.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=182.98,298.04");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=219.28,152.99");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=172.49,201.48");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=168.29,352.34");
    }

}

