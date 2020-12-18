
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-9
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
        @display("p=190.00,115.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=197.31,103.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=202.61,124.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=260.42,145.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=225.00,162.74");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=174.52,122.42");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=146.21,132.90");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=224.11,107.80");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=316.76,197.34");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=214.70,145.35");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=136.25,98.14");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=149.08,112.44");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=193.62,183.16");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=293.84,134.08");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=147.92,182.81");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=186.64,85.66");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=257.68,51.88");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=185.00,146.99");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=214.84,126.79");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=181.23,236.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=198.87,161.93");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=224.63,55.85");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=183.59,98.74");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=280.86,192.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=231.44,96.85");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=124.25,60.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=274.00,159.26");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=226.66,208.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=307.96,180.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=280.31,103.04");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=173.01,101.39");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=172.29,180.52");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=180.33,39.60");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=343.05,127.07");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=233.01,156.44");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=247.01,187.28");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=140.76,61.25");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=252.69,176.56");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=342.87,166.63");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=235.35,114.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=228.81,25.17");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=227.49,125.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=275.29,180.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=266.01,130.22");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=295.89,119.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=177.73,134.13");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=150.00,102.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=269.84,109.43");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=274.14,227.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=257.00,225.16");
    }

}

