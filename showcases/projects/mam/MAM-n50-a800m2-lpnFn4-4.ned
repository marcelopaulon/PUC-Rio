
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-4
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
        @display("p=537.00,669.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=544.14,601.03");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=557.49,632.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=510.90,569.65");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=513.72,603.09");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=561.54,642.56");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=529.00,572.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=549.86,555.98");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=580.12,585.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=512.22,579.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=574.56,557.84");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=578.69,538.70");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=563.71,522.55");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=589.30,728.04");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=597.25,555.23");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=558.98,601.53");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=550.59,588.45");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=524.98,599.30");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=519.04,559.72");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=439.10,587.77");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=476.77,575.29");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=637.98,514.30");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=504.41,536.87");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=664.92,568.82");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=549.64,482.23");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=629.64,479.56");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=613.75,731.46");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=561.99,577.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=488.59,592.32");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=550.71,574.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=501.93,618.79");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=573.56,668.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=519.05,651.36");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=610.44,510.02");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=492.62,613.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=434.80,521.20");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=661.66,594.08");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=581.31,569.70");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=493.79,499.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=525.61,582.85");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=595.21,647.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=649.89,629.69");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=520.41,612.88");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=501.42,600.66");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=581.61,694.12");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=539.36,577.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=538.05,555.12");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=668.28,559.11");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=513.89,674.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=667.55,583.28");
    }

}

