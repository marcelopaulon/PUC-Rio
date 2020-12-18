
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-3
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
        @display("p=519.00,192.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=439.27,210.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=501.28,273.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=483.21,211.83");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=426.42,149.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=470.42,134.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=454.44,168.76");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=602.88,237.07");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=436.07,175.07");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=535.70,221.69");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=532.25,161.21");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=429.39,123.44");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=470.64,171.71");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=401.20,95.66");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=562.73,214.76");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=457.59,180.20");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=490.29,282.16");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=484.60,168.03");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=435.47,91.09");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=490.58,97.29");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=454.43,152.90");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=510.15,239.65");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=439.50,226.86");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=504.03,206.57");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=496.79,241.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=472.13,103.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=455.60,138.07");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=372.97,219.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=566.49,249.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=503.70,137.80");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=501.57,256.55");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=560.67,268.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=441.38,129.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=395.77,136.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=436.52,109.80");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=433.91,159.17");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=380.59,154.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=581.43,253.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=478.64,275.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=444.87,201.35");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=542.00,79.80");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=476.01,82.34");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=488.40,158.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=390.57,208.87");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=507.78,292.64");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=516.98,229.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=408.11,161.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=552.60,135.58");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=402.11,178.13");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=539.30,116.30");
    }

}

