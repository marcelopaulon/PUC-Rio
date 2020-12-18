
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn1-8
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
        @display("p=268.00,672.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=279.14,590.36");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=334.08,624.88");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=320.10,607.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=389.27,638.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=440.42,606.08");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=449.05,623.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=475.36,700.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=514.58,651.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=574.51,640.13");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=559.24,593.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=536.56,584.73");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=512.20,565.70");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=515.23,542.39");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=506.34,450.45");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=508.26,479.62");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=548.48,496.40");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=528.21,485.57");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=478.50,482.09");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=473.13,502.97");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=406.87,533.52");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=435.05,582.79");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=469.50,576.55");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=528.64,564.54");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=592.06,598.50");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=558.02,647.79");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=496.32,589.50");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=557.07,542.47");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=551.26,524.46");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=466.84,546.04");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=516.17,522.29");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=514.24,510.79");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=570.44,531.56");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=597.74,469.63");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=588.81,431.71");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=612.44,402.86");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=605.14,419.35");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=550.78,476.30");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=487.78,533.75");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=430.47,563.84");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=437.44,657.90");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=406.49,695.60");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=439.08,682.32");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=443.09,723.69");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=536.96,726.93");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=459.00,726.23");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=382.28,759.08");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=360.85,762.75");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=314.03,731.51");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=248.13,696.19");
    }

}

