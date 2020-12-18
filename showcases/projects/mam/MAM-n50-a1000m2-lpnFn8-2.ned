
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-2
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
        @display("p=547.00,42.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=521.96,91.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=581.08,96.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=563.25,51.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=470.98,23.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=466.92,6.30");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=527.07,59.48");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=608.62,52.95");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=537.47,64.28");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=542.51,145.24");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=647.96,34.92");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=547.54,4.06");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=449.78,47.83");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=482.39,7.29");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=533.36,49.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=479.44,72.78");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=606.37,95.99");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=618.36,78.24");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=465.28,49.67");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=392.96,29.44");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=448.66,78.87");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=528.79,73.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=521.96,111.57");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=652.85,143.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=538.15,94.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=435.53,58.69");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=430.99,27.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=555.64,141.66");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=520.90,32.29");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=529.85,130.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=565.82,74.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=496.13,70.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=472.67,42.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=401.44,10.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=496.58,84.86");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=591.55,50.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=553.34,110.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=532.57,142.56");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=627.41,12.96");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=506.44,39.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=529.91,3.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=471.28,139.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=534.40,27.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=570.11,132.88");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=566.50,104.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=555.25,28.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=511.45,93.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=432.66,42.40");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=506.18,17.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=621.12,95.79");
    }

}

