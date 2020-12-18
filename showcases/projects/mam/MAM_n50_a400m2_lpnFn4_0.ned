
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_0
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
        @display("p=43.80,345.08");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=46.20,358.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=80.24,352.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=77.74,336.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=93.31,343.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=61.42,353.56");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=77.04,278.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=131.56,348.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=46.16,388.37");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=37.52,332.06");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=127.87,320.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=102.21,354.72");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=21.19,354.03");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=23.25,387.27");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=136.35,389.74");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=65.37,337.24");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=37.51,273.53");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=106.07,395.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=156.53,326.30");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=67.53,211.58");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=112.75,338.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=79.40,371.32");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=0.92,363.21");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=111.50,327.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=164.62,314.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=86.86,231.09");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=13.60,316.08");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=81.29,322.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=143.21,349.81");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=39.70,295.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=105.36,316.26");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=42.47,312.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=21.36,210.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=145.90,333.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=86.76,385.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=25.21,248.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=131.18,277.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=145.92,378.35");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=76.11,292.55");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=35.64,377.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=115.60,384.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=16.12,330.70");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=55.38,398.48");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=120.76,344.19");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=135.45,378.07");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=61.30,274.59");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=223.54,336.25");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=61.66,380.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,242.39");
    }

}

