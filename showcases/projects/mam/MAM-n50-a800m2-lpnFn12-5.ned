
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-5
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
        @display("p=589.00,686.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=681.64,685.21");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=602.33,681.85");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=680.29,721.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=725.44,685.41");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=549.41,646.07");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=729.38,718.44");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=557.23,711.04");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=688.28,739.24");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=717.59,716.20");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=623.32,722.07");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=724.40,641.16");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=578.50,649.99");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=614.16,778.30");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=721.38,675.00");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=613.94,667.30");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=674.45,750.17");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=604.45,694.56");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=749.64,748.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=648.77,715.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=500.20,697.72");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=697.56,643.87");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=532.80,685.21");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=665.09,717.43");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=776.04,632.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=615.34,684.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=733.32,633.77");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=616.80,633.19");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=623.47,645.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=703.86,714.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=565.94,665.08");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=624.51,703.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=563.71,734.12");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=671.00,694.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=737.84,677.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=558.76,744.30");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=729.86,617.61");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=626.96,672.91");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=644.91,774.28");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=697.63,659.10");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=611.92,718.92");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=704.95,679.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=590.75,697.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=630.64,791.46");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=708.73,661.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=512.53,722.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=681.51,647.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=547.45,692.19");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=680.66,707.13");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=742.95,768.87");
    }

}

