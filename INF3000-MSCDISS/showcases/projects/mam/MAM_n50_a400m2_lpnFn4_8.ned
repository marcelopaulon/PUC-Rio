
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_8
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
        @display("p=114.39,4.27");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=92.79,25.45");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=184.03,7.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=266.79,40.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=321.14,67.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=317.71,5.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=295.60,56.79");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=302.92,16.39");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=329.03,21.07");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=374.13,49.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=386.43,52.02");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=323.92,84.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=120.24,62.00");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=97.72,11.22");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=118.34,107.94");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=190.94,21.25");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=251.52,89.95");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=225.87,65.30");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=246.47,75.48");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=276.06,51.02");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=280.54,108.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=381.61,24.92");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=394.82,26.91");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=384.90,147.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=308.93,86.48");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=79.59,89.26");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=86.09,60.72");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=38.68,4.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=148.02,72.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=251.51,112.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=359.07,82.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=309.15,35.96");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=284.93,27.77");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=242.46,30.81");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=337.79,48.95");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=348.85,90.80");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=370.55,22.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=314.84,44.59");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=151.63,142.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=53.26,58.95");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=77.27,10.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=125.57,31.17");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=339.70,9.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=348.53,57.68");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=263.16,75.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=339.08,101.89");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=335.33,83.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=279.41,10.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=365.93,68.59");
    }

}

