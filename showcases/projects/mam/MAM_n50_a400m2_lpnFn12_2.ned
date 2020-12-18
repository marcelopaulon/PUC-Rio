
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_2
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
        @display("p=76.76,270.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=28.64,221.07");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=73.30,257.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=77.49,183.05");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=125.97,252.54");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=92.27,172.68");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=88.31,231.89");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=54.52,261.05");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=90.67,271.40");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=153.90,236.98");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=128.40,320.60");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=59.30,275.28");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=57.70,167.41");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=83.95,159.45");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=116.31,327.45");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=40.08,355.66");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=21.85,307.28");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=97.87,206.12");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=108.20,164.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=92.63,292.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=132.11,269.01");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=0.21,286.48");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=118.24,217.71");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=131.13,181.81");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=164.87,297.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=83.93,252.68");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=22.34,288.21");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=81.84,219.42");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=142.66,217.69");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=75.32,325.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=128.69,192.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=50.10,210.19");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=116.33,279.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=76.43,114.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=85.72,321.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=58.86,239.29");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=70.66,280.40");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=71.25,345.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=143.42,177.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=88.27,303.66");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=111.63,254.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=37.77,241.60");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=128.09,295.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=69.08,150.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=143.05,301.11");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=42.09,291.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=98.92,248.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=1.87,204.87");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=28.85,137.53");
    }

}

