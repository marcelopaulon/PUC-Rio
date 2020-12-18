
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-6
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
        @display("p=265.00,204.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=234.40,136.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=296.07,114.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=255.11,44.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=227.13,22.21");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=311.63,16.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=300.48,39.83");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=260.75,255.00");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=245.67,69.57");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=332.38,88.23");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=229.47,39.94");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=233.81,3.62");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=346.91,18.50");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=269.99,113.54");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=346.36,239.98");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=237.70,90.93");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=368.95,142.25");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=247.38,37.36");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=246.77,25.47");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=284.95,31.52");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=323.50,99.24");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=219.20,285.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=260.16,110.14");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=306.40,160.51");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=254.33,79.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=247.17,8.64");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=306.68,28.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=315.36,127.77");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=244.30,188.70");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=188.80,124.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=270.12,46.36");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=161.36,66.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=256.52,90.03");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=342.88,32.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=267.39,73.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=250.29,254.65");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=185.87,205.97");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=311.11,182.25");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=181.85,95.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=196.58,5.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=313.37,3.68");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=279.34,74.37");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=308.32,135.43");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=168.08,129.38");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=305.76,111.54");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=301.88,89.48");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=189.06,46.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=306.93,49.05");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=303.36,73.45");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=217.05,265.35");
    }

}

