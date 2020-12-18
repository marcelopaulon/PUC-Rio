
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-4
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
        @display("p=110.00,285.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=93.17,298.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=40.33,269.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=88.71,321.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=67.61,314.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=51.47,325.02");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=76.17,297.32");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=82.61,269.37");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=173.17,322.12");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=23.46,273.93");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=77.90,332.10");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=101.02,340.61");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=128.92,337.59");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=28.98,367.85");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=110.83,229.62");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=140.55,354.32");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=98.20,202.81");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=54.81,358.86");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=6.27,247.47");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=66.92,332.50");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=38.42,325.19");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=64.06,200.59");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=152.23,263.35");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=50.73,345.56");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=153.82,282.22");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=43.32,295.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=93.60,393.62");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=126.59,316.76");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=149.10,369.45");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=97.24,274.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=79.45,208.75");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=115.03,307.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=69.93,344.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=14.04,331.81");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=121.08,273.50");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=126.16,247.85");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=74.01,237.01");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=29.51,302.31");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=87.92,370.36");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=60.01,260.53");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=136.57,324.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=113.31,375.03");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=98.55,244.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=110.65,218.80");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=34.90,280.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=84.79,309.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=41.63,230.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=125.30,350.42");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=73.60,285.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=173.19,249.27");
    }

}

