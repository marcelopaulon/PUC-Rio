
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_1
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
        @display("p=107.87,116.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=145.96,89.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=201.97,49.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=208.51,39.96");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=40.31,102.41");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=150.88,56.85");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=187.89,111.32");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=185.70,6.57");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=238.35,69.63");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=44.69,84.08");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=156.37,83.33");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=136.82,80.66");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=189.61,138.95");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=203.42,13.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=26.61,85.04");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=46.67,129.60");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=118.82,145.92");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=181.91,94.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=284.27,22.30");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=124.38,117.23");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=91.93,190.60");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=200.36,135.79");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=142.07,19.62");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=231.13,47.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=57.13,153.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=46.11,112.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=154.26,100.56");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=162.18,30.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=254.76,77.98");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=72.90,93.86");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=74.29,175.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=118.63,32.09");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=226.14,23.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=193.37,37.69");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=111.92,96.67");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=44.22,140.04");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=109.50,54.81");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=191.64,122.31");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=169.55,10.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=78.45,31.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=58.62,43.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=166.17,163.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=232.84,11.31");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=118.45,71.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=113.73,133.68");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=150.78,178.43");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=138.71,116.27");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=200.20,62.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=189.84,62.55");
    }

}

