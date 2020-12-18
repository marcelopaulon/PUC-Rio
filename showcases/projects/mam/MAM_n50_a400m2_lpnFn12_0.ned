
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_0
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
        @display("p=53.19,298.90");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=42.76,281.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=21.98,298.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=48.51,314.58");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=71.79,323.81");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=32.77,332.93");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=85.50,248.92");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=34.99,315.92");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=76.85,298.01");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=98.35,285.83");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=55.54,247.28");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=64.36,378.06");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=24.97,324.38");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=104.89,232.68");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=122.25,234.05");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=84.10,321.18");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=48.59,258.95");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=29.85,344.65");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=42.98,382.82");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=119.65,264.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=54.74,274.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=3.87,272.45");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=85.96,371.80");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=122.61,330.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=100.86,319.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=53.47,331.66");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=40.66,226.69");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=34.47,271.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=59.19,218.21");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=51.76,371.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=63.97,307.29");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=18.58,272.76");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=13.81,380.07");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=103.16,337.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=102.62,269.45");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=84.49,204.00");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=95.53,362.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=118.35,294.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=84.29,224.66");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=91.64,311.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=5.65,344.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=108.11,283.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=5.14,283.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=8.63,227.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=89.25,345.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=26.73,250.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=42.36,323.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=11.77,295.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=0.49,327.00");
    }

}

