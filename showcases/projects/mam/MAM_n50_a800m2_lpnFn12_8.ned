
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_8
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=52.17,712.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=68.87,686.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=35.18,725.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=94.05,762.31");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=92.02,789.14");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=110.44,682.22");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=135.46,703.13");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=15.94,752.02");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=66.18,793.52");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=104.23,769.69");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=57.45,727.93");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=120.59,688.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=88.62,685.00");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=50.71,791.20");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=55.98,648.09");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=24.20,732.84");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=95.60,777.89");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=13.74,724.97");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=118.27,730.77");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=82.57,714.83");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=5.41,696.77");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=33.61,691.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=9.49,671.67");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=75.35,739.13");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=65.24,715.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=41.82,697.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=50.24,679.00");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=25.06,712.24");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=71.85,758.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=74.26,620.61");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=48.67,619.77");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=93.99,614.89");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=58.97,664.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=129.92,720.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=164.68,691.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=31.58,797.71");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=157.22,726.74");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=19.79,693.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=35.60,767.12");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=88.10,666.10");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=41.34,744.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=39.78,659.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=69.30,725.11");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=112.82,795.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=188.45,711.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=52.87,630.98");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=103.70,647.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=23.15,743.59");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=53.88,759.89");
    }

}

