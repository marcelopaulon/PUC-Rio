
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_4
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
        @display("p=93.91,336.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=90.09,371.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=28.18,309.16");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=78.37,334.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=83.89,347.31");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=122.96,283.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=107.22,346.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=194.80,367.43");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=194.22,355.12");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=166.26,298.25");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=106.85,369.23");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=47.32,350.56");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=54.00,264.65");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=60.81,322.49");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=46.12,325.22");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=98.77,273.12");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=104.61,286.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=123.24,255.47");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=56.33,303.98");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=159.97,352.24");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=251.83,292.38");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=192.72,325.59");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=235.34,290.18");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=103.52,382.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=78.90,306.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=106.01,249.92");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=42.52,283.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=163.77,316.24");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=86.61,318.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=113.03,298.03");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=90.82,282.27");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=64.01,252.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=137.57,258.28");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=174.55,398.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=240.43,389.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=184.08,271.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=127.30,307.57");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=100.20,315.96");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=124.87,352.56");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=63.91,360.47");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=67.86,299.68");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=8.81,289.99");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=85.50,254.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=102.54,357.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=135.34,283.77");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=61.44,289.26");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=178.01,311.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=187.67,375.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=200.12,231.67");
    }

}

