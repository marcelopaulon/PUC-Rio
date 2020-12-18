
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn1-4
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
        @display("p=64.00,294.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=6.62,212.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=70.21,186.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=61.00,179.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=60.17,251.28");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=73.30,304.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=81.49,335.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=73.79,328.80");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=79.06,267.87");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=31.55,275.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=19.78,188.35");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=24.86,176.94");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=37.23,151.72");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=28.48,52.84");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=40.35,40.37");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=128.18,74.05");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=149.92,89.99");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=188.43,134.76");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=156.37,99.60");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=153.42,148.67");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=69.07,95.03");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=105.17,146.08");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=165.15,183.33");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=105.62,260.07");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=12.01,245.19");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=0.58,237.53");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,288.90");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=169.91,319.60");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=155.46,302.68");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=133.39,346.27");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=182.79,353.78");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=238.99,423.18");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=251.34,417.45");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=191.73,460.08");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=283.05,357.52");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=305.29,384.39");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=395.56,353.22");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=400.32,390.04");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=357.57,379.11");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=356.43,425.15");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=328.26,411.34");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=300.85,471.36");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=318.87,487.01");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=313.77,505.44");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=376.45,583.36");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=352.14,568.10");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=359.32,587.20");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=311.79,550.53");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=328.29,567.47");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=423.10,554.98");
    }

}

