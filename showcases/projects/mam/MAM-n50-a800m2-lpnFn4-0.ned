
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-0
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
        @display("p=641.00,477.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=630.71,468.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=653.72,429.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=669.49,426.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=602.19,416.42");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=631.28,433.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=716.64,389.91");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=726.60,387.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=704.99,401.13");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=734.49,395.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=799.08,417.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=776.66,336.82");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=731.22,344.84");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=660.51,479.04");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=688.57,413.18");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=670.49,404.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=614.62,420.28");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=563.73,484.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=559.17,390.65");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=694.81,454.42");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=739.65,376.43");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=687.70,435.30");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=702.42,480.67");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=799.62,514.09");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=737.47,265.05");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=677.79,380.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=708.30,460.37");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=633.15,458.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=626.33,444.78");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=746.05,419.73");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=516.18,443.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=673.69,352.47");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=732.52,434.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=692.82,397.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=747.83,346.96");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=705.61,441.39");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=776.91,386.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=798.54,329.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=709.76,360.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=600.73,496.59");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=591.01,390.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=592.78,423.87");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=739.34,466.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=601.09,402.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=641.82,413.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=757.98,344.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=690.05,370.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=648.07,353.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=768.16,314.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=767.33,434.60");
    }

}

