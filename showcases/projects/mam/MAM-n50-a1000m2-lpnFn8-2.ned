
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-2
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
        @display("p=333.00,570.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=275.70,596.38");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=269.59,565.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=289.87,573.34");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=282.76,546.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=240.34,517.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=240.23,549.38");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=384.70,611.18");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=252.64,563.45");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=330.58,545.65");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=267.67,588.72");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=288.62,530.65");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=285.03,447.37");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=201.10,610.92");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=321.28,577.07");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=295.05,588.18");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=221.82,604.86");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=266.13,651.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=286.99,596.22");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=213.89,519.69");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=185.43,567.00");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=384.58,590.74");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=219.94,533.92");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=281.68,581.50");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=231.94,537.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=294.56,553.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=170.39,501.93");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=181.84,469.41");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=356.12,565.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=315.55,687.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=181.18,533.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=251.86,502.44");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=277.25,489.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=311.82,549.89");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=230.26,459.77");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=304.21,485.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=308.56,516.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=289.98,509.76");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=256.87,575.00");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=260.78,534.81");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=257.87,494.12");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=216.12,489.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=403.90,575.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=281.93,665.43");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=292.84,626.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=273.18,641.66");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=273.04,543.74");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=198.25,511.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=189.31,626.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=374.00,643.20");
    }

}

