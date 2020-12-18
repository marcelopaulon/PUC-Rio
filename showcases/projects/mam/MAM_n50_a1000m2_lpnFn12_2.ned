
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_2
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
        @display("p=105.15,84.97");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=106.16,72.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=47.83,67.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=69.12,48.44");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=125.80,90.78");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=84.95,114.45");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=90.31,67.46");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=60.36,130.48");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=77.69,123.69");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=31.36,150.74");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=63.86,76.71");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=112.82,63.54");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=9.10,28.65");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=9.75,40.91");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=20.53,121.97");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=145.03,6.60");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=36.55,117.62");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=60.43,4.20");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=31.13,90.06");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=113.44,167.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=119.20,157.32");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=201.86,46.53");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=97.01,128.17");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=38.38,35.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=86.65,91.15");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=124.99,71.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=135.01,39.67");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=49.09,1.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=45.33,85.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=168.50,146.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=47.06,149.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=185.47,124.84");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=64.23,105.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=21.89,110.27");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=47.99,167.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=67.85,31.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=171.51,33.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=55.86,142.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=125.67,52.29");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=61.15,117.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=112.79,95.01");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=143.20,128.09");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=39.97,58.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=79.69,73.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=77.03,133.89");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=114.47,80.49");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=144.25,152.19");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=17.27,74.05");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=152.08,27.53");
    }

}

