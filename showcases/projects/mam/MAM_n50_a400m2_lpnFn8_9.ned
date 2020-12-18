
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_9
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
        @display("p=58.76,290.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=52.48,299.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=8.31,292.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=8.55,278.10");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=3.45,261.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=47.14,317.45");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=68.75,279.75");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=77.76,335.55");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=62.75,227.41");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=38.96,305.59");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=28.30,238.36");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=60.19,310.40");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=59.90,359.02");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=135.13,238.95");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=76.56,304.10");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=33.69,340.27");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=56.22,252.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=19.88,285.67");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=51.66,212.76");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=67.83,345.01");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=55.00,330.06");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=27.32,374.73");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=61.02,239.96");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=78.34,290.77");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=25.16,254.96");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=3.62,339.13");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=5.92,236.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=101.50,317.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=132.82,250.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=90.09,330.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=38.39,213.38");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=28.91,311.05");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=16.82,223.63");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=71.77,316.65");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=110.96,282.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=59.87,271.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=77.17,271.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=11.84,306.35");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=40.84,280.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=47.28,245.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=16.67,349.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=122.94,309.89");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=123.83,351.46");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=101.91,222.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=82.52,242.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=50.53,263.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=79.06,222.10");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=31.59,325.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=155.17,248.48");
    }

}

