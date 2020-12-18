
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_9
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
        @display("p=137.09,302.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=131.79,229.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=145.30,279.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=175.99,205.22");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=178.66,109.49");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=203.69,63.61");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=233.79,153.29");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=210.40,126.19");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=204.36,102.13");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=240.93,105.55");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=268.91,114.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=296.45,179.03");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=67.56,271.52");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=173.40,303.53");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=110.70,181.96");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=173.78,268.07");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=139.08,181.48");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=189.14,192.32");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=245.95,95.97");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=314.11,191.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=255.34,136.40");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=173.72,93.95");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=254.31,45.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=228.00,162.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=329.00,240.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=153.71,343.28");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=177.50,288.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=98.18,243.34");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=141.84,289.97");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=187.91,165.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=273.31,125.11");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=143.64,105.76");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=297.88,140.80");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=214.77,137.10");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=135.42,169.90");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=224.84,41.01");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=235.03,125.63");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=203.26,198.16");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=113.35,325.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=120.06,289.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=105.59,212.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=201.56,310.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=160.63,178.22");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=161.43,96.96");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=230.81,51.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=310.10,161.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=207.57,188.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=189.11,106.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=327.73,116.28");
    }

}

