
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_1
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=113.94,69.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=181.95,102.19");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=217.57,114.81");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=253.75,79.80");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=57.35,144.42");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=59.62,59.76");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=238.43,174.33");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=241.54,126.38");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=305.01,72.95");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=73.72,188.91");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=59.10,13.58");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=123.59,119.75");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=204.81,172.22");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=197.27,108.35");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=114.44,105.44");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=147.50,44.43");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=143.78,75.47");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=132.34,69.31");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=268.54,5.00");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=135.55,142.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=180.11,71.82");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=174.43,116.55");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=216.28,139.25");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=269.03,77.08");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=39.05,85.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=183.21,17.50");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=254.43,66.79");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=218.81,53.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=252.95,42.91");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=83.52,170.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=139.30,21.10");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=104.59,81.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=252.02,92.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=305.50,13.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=135.90,112.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=80.71,47.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=130.35,43.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=222.07,168.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=174.64,88.20");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=28.50,106.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=66.81,149.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=218.54,95.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=207.51,67.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=211.65,103.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=78.77,86.80");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=68.96,24.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=262.62,112.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=266.65,101.86");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=313.35,98.64");
    }

}

