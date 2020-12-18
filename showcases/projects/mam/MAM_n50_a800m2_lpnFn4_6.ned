
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_6
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
        @display("p=84.18,703.39");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=118.28,714.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=106.52,719.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=132.58,706.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=87.17,691.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=87.20,593.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=38.88,629.53");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=51.49,663.71");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=58.96,607.77");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=117.08,591.09");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=123.86,560.52");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=219.72,570.68");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=95.87,773.28");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=95.24,724.90");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=122.23,691.72");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=51.53,699.72");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=118.43,789.41");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=142.57,619.62");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=33.24,531.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=30.71,653.57");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=43.91,594.01");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=148.94,610.86");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=78.24,677.04");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=85.90,575.81");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=169.45,635.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=142.37,692.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=8.41,653.92");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=131.54,736.30");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=24.01,718.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=208.81,665.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=64.47,727.19");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=12.85,540.95");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=22.32,598.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=70.07,668.66");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=52.65,571.00");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=99.13,654.82");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=104.82,595.18");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=290.34,559.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=94.46,741.20");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=164.68,669.22");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=25.14,745.68");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=130.81,718.24");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=181.98,738.06");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=63.13,658.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=156.44,586.77");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=25.35,695.56");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=41.18,671.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=58.43,629.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=120.09,531.59");
    }

}

