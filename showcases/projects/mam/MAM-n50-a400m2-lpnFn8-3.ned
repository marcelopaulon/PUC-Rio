
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-3
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
        @display("p=246.00,244.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=207.60,293.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=247.69,286.78");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=346.90,292.98");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=357.48,228.94");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=280.44,235.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=295.80,228.28");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=189.83,252.64");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=142.52,257.70");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=230.49,317.78");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=389.76,372.86");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=349.27,243.88");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=255.42,149.41");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=362.94,256.47");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=263.46,272.19");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=171.00,202.41");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=272.09,203.51");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=348.86,254.38");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=392.75,206.29");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=259.25,171.52");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=284.40,217.37");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=315.20,219.02");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=218.86,301.83");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=319.82,290.46");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=368.79,284.86");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=384.40,259.33");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=312.12,204.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=276.46,156.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=233.73,236.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=188.66,289.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=315.15,279.07");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=321.48,330.89");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=399.77,216.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=276.60,269.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=317.68,237.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=232.01,219.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=185.74,390.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=296.75,307.65");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=286.19,272.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=385.39,220.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=301.42,219.54");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=352.78,301.11");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=252.84,328.89");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=230.47,267.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=210.58,318.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=328.31,346.48");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=345.11,278.33");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=263.19,255.58");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=317.72,192.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=341.76,264.29");
    }

}

