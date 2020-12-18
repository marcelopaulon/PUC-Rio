
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-3
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
        @display("p=166.00,220.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=154.01,202.84");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=92.89,185.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=114.16,242.30");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=126.48,297.72");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=178.52,211.07");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=99.05,220.92");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=125.78,192.64");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=170.28,285.95");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=59.98,350.45");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=216.73,184.49");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=128.28,260.27");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=100.90,176.58");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=178.18,254.14");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=94.10,301.98");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=114.69,201.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=208.33,239.65");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=69.70,177.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=32.99,297.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=185.76,318.15");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=217.57,168.35");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=215.35,267.12");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=42.46,229.98");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=51.24,186.97");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=113.01,320.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=188.67,289.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=66.27,187.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=167.06,121.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=120.88,225.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=168.71,329.62");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=80.84,254.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=186.31,237.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=85.08,91.11");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=172.28,318.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=44.35,260.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=183.73,222.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=192.71,217.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=40.52,155.68");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=72.97,287.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=188.59,248.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=147.28,276.03");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=164.18,152.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=71.17,227.99");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=155.36,167.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=81.28,226.81");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=178.78,147.26");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=168.51,237.84");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=30.57,176.53");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=50.31,285.27");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=164.35,383.36");
    }

}

