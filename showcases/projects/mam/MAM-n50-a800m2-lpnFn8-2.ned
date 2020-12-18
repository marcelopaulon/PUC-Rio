
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-2
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
        @display("p=304.00,661.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=266.73,682.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=312.72,595.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=349.09,662.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=282.75,606.05");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=257.18,565.42");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=270.19,551.04");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=314.61,744.53");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=312.45,614.04");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=327.70,598.33");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=345.20,681.08");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=269.18,573.33");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=222.92,647.32");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=310.88,558.88");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=324.21,701.00");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=238.67,627.41");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=293.35,597.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=340.72,731.42");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=292.86,629.70");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=275.42,651.03");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=330.91,564.75");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=248.57,592.98");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=257.31,670.71");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=380.44,600.21");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=321.41,670.71");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=272.24,605.95");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=307.88,520.00");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=241.54,611.01");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=299.32,705.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=286.73,750.45");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=313.39,580.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=352.28,651.48");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=353.23,594.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=286.40,586.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=237.86,548.21");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=230.85,691.79");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=329.01,741.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=255.13,546.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=376.03,668.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=277.20,543.45");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=240.22,559.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=210.86,542.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=309.46,675.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=336.29,692.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=315.25,635.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=279.53,667.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=325.97,611.57");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=330.79,537.26");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=248.61,580.36");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=311.98,758.37");
    }

}

