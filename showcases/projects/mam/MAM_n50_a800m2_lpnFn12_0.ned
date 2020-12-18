
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_0
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=57.54,764.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=80.76,677.30");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=65.80,695.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=130.93,659.91");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=80.42,776.24");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=79.62,755.77");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=35.67,588.05");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=113.18,665.72");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=55.43,635.38");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=57.38,675.86");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=44.04,746.21");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=142.86,659.36");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=13.92,646.88");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=191.68,737.09");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=116.44,744.45");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=17.48,766.10");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=78.87,693.52");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=36.84,681.51");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=222.66,646.66");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=128.20,693.45");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=73.85,766.54");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=89.17,743.33");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=23.76,736.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=123.20,616.82");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=174.56,713.64");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=59.06,780.93");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=38.39,622.36");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=155.82,727.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=174.69,724.39");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=67.61,736.35");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=73.48,666.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=149.94,616.00");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=138.02,737.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=73.76,656.45");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=151.06,650.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=17.26,708.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=113.85,601.30");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=52.17,696.69");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=152.20,707.84");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=152.17,635.61");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=4.97,734.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=115.58,706.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=6.77,677.71");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=83.70,653.71");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=1.62,686.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=10.73,776.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=110.48,644.98");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=28.98,755.29");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=148.09,697.55");
    }

}

