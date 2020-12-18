
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn1-8
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
        @display("p=704.00,250.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=666.70,196.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=628.30,133.01");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=637.28,159.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=630.31,252.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=547.76,231.97");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=541.57,253.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=558.52,198.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=515.48,171.88");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=583.54,103.35");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=555.00,129.94");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=574.02,149.83");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=563.23,223.01");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=503.74,298.55");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=468.50,282.04");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=476.57,307.60");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=423.16,350.55");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=397.22,342.40");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=378.22,338.60");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=425.18,340.67");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=449.75,296.19");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=466.35,299.11");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=399.77,260.57");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=391.96,219.51");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=402.69,226.19");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=369.90,309.62");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=304.14,315.73");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=306.17,304.26");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=318.31,305.00");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=310.65,294.72");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=340.88,315.10");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=338.18,301.20");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=369.58,246.16");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=383.38,199.77");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=396.61,189.99");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=371.98,199.31");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=436.86,254.26");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=452.69,200.04");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=503.02,218.84");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=566.01,191.67");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=565.87,210.55");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=547.02,184.95");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=534.33,127.67");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=544.42,123.91");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=480.58,101.86");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=481.51,192.60");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=526.39,269.28");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=515.22,274.44");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=486.94,310.85");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=515.74,327.86");
    }

}

