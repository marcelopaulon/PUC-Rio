
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_7
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
        @display("p=113.78,92.00");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=92.74,79.27");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=165.38,138.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=198.17,133.74");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=82.22,108.74");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=197.52,82.27");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=25.15,137.05");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=227.12,182.75");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=150.19,120.05");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=48.55,94.24");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=55.01,117.11");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=120.61,70.95");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=236.46,137.33");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=219.92,123.32");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=149.64,65.29");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=136.09,100.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=25.59,103.20");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=170.10,89.64");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=177.27,141.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=58.86,20.35");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=119.77,186.38");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=124.34,46.90");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=187.59,108.83");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=264.25,149.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=69.93,179.91");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=149.12,97.68");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=123.80,109.09");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=100.57,151.93");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=164.96,51.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=34.10,88.44");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=134.69,84.23");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=99.09,140.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=180.10,165.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=232.42,201.14");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=181.05,96.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=103.57,120.27");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=120.38,137.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=224.82,169.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=205.71,145.17");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=70.23,151.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=153.14,35.91");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=67.98,91.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=170.45,191.19");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=171.25,154.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=85.65,148.13");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=149.40,77.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=71.36,134.47");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=158.16,182.23");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=187.07,154.02");
    }

}

