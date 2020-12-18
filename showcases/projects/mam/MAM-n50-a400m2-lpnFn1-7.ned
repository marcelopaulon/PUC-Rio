
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn1-7
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
        @display("p=343.00,273.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=317.07,243.42");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=366.84,290.88");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=394.37,232.30");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=378.13,307.90");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=353.45,286.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=316.46,222.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=297.67,221.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=278.44,315.32");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=353.99,377.89");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=367.97,351.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=355.48,357.79");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=315.50,377.30");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=363.40,329.19");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=358.73,301.92");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=395.28,271.16");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=353.86,336.14");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=377.50,378.14");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=325.90,385.09");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=255.25,398.29");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=317.19,356.98");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=393.61,340.93");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=387.10,354.06");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=377.68,338.89");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=391.40,394.11");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=368.31,367.78");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=291.20,340.50");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=283.18,325.40");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=327.51,348.46");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=251.02,345.75");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=237.60,350.06");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=231.38,371.86");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=209.37,361.75");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=286.14,391.28");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=271.26,389.61");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=244.77,375.26");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=299.37,351.86");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=264.07,332.16");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=257.77,354.09");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=225.33,329.77");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=260.94,295.37");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=305.90,215.09");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=396.82,203.72");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=394.56,162.81");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=382.34,109.85");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=396.15,117.86");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=352.27,45.85");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=282.57,74.69");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=213.89,4.59");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=168.79,75.66");
    }

}

