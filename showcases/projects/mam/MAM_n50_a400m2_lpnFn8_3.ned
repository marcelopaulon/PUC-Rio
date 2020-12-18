
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_3
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
        @display("p=93.47,278.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=159.00,257.16");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=145.27,312.71");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=151.07,327.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=127.87,328.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=75.25,250.62");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=197.70,312.97");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=74.11,262.90");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=185.90,187.42");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=159.43,342.94");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=143.68,289.74");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=116.91,273.47");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=97.78,258.96");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=107.88,361.68");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=39.28,340.24");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=145.36,221.82");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=89.97,302.61");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=183.98,357.63");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=219.46,316.51");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=36.74,171.63");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=111.99,312.67");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=73.23,284.13");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=154.21,231.34");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=56.64,342.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=182.39,329.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=70.79,395.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=18.04,273.93");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=22.52,304.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=75.54,353.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=212.27,279.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=51.78,289.55");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=116.84,330.99");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=131.95,340.83");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=94.67,233.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=101.11,348.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=98.95,332.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=201.05,297.66");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=215.25,289.97");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=165.99,374.39");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=85.80,392.33");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=152.15,195.53");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=12.68,338.40");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=22.70,249.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=248.00,251.27");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=111.57,398.55");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=217.70,271.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=157.13,298.43");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=66.91,197.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=185.48,276.52");
    }

}

