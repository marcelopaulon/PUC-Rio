
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_0
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=66.02,76.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=80.53,45.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=85.51,57.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=134.35,53.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=123.07,57.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=111.15,32.82");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=113.67,104.38");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=143.29,113.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=51.00,139.66");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=165.35,158.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=185.64,171.85");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=204.24,171.35");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=56.62,104.15");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=80.47,86.11");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=71.72,125.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=103.02,82.98");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=206.87,107.41");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=138.61,43.48");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=37.09,36.23");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=123.82,79.08");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=71.33,160.49");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=70.53,89.54");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=121.93,168.80");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=239.41,105.59");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=250.79,190.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=189.90,119.84");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=88.56,6.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=78.88,144.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=99.39,57.68");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=160.51,44.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=208.20,34.18");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=176.75,54.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=34.50,103.13");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=189.35,105.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=43.72,224.94");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=150.72,231.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=248.19,111.92");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=204.97,183.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=87.22,126.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=63.92,60.28");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=53.20,56.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=151.44,40.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=163.07,116.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=77.73,11.87");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=101.69,45.55");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=48.20,92.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=145.91,152.74");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=42.30,159.85");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=191.54,249.33");
    }

}

