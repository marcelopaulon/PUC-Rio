
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-2
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
        @display("p=50.00,272.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=23.23,308.39");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=37.20,268.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=69.13,236.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=68.95,179.80");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=46.75,329.96");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=36.70,352.96");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=52.75,192.84");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=45.95,215.99");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=113.11,200.70");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=50.30,243.58");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=26.24,327.24");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=11.33,278.53");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=79.63,240.86");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=97.41,130.37");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=8.15,195.32");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=16.45,215.49");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=68.02,266.38");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=114.08,228.81");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=109.90,176.26");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=94.89,302.31");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=89.18,331.07");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=33.75,235.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=1.74,282.42");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=38.96,156.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=59.71,223.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=7.82,317.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=13.21,242.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=57.07,252.11");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=33.06,201.90");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=14.78,264.88");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=50.46,401.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=114.51,309.34");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=94.92,140.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=12.91,158.47");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=24.84,260.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=50.51,341.91");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=74.06,257.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=70.91,219.11");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=23.12,136.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=79.89,279.15");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=80.69,227.68");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=68.79,316.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=101.54,330.56");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=96.96,240.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=62.63,207.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=61.49,353.99");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=128.49,229.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=95.51,200.49");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=165.51,204.35");
    }

}

