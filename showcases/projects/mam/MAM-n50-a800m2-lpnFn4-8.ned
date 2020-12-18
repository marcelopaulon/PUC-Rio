
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-8
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
        @display("p=678.00,208.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=667.89,231.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=657.36,183.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=602.29,178.02");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=550.55,102.44");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=585.50,146.97");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=528.39,83.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=590.69,129.80");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=515.39,140.96");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=469.35,217.40");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=443.52,247.61");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=537.42,222.19");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=548.14,175.85");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=604.68,160.14");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=646.83,223.60");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=719.04,243.54");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=566.50,177.99");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=514.25,127.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=557.35,147.79");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=611.94,67.19");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=544.66,90.87");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=518.99,52.85");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=460.09,235.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=497.13,236.67");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=556.82,226.11");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=586.89,223.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=650.97,271.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=722.98,189.56");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=685.91,191.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=613.52,153.09");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=596.28,152.73");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=656.64,148.27");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=522.04,181.29");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=623.19,82.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=467.26,141.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=461.11,269.30");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=420.29,156.60");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=507.18,214.28");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=498.87,156.16");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=750.34,220.84");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=761.35,209.68");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=649.23,194.27");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=589.70,165.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=640.26,61.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=521.51,106.82");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=544.14,41.73");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=592.31,117.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=453.89,188.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=424.97,201.13");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=413.64,205.74");
    }

}

