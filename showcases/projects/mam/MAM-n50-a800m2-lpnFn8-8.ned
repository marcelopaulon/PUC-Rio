
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-8
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
        @display("p=740.00,393.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=734.87,344.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=718.79,374.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=733.56,369.49");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=715.95,338.33");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=720.64,358.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=637.98,341.45");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=752.45,465.13");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=795.95,341.45");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=705.06,413.30");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=710.19,392.97");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=749.06,320.28");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=775.68,407.05");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=578.77,349.23");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=739.04,414.69");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=789.84,283.43");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=637.54,377.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=687.74,346.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=698.25,341.98");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=705.27,349.89");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=693.11,327.67");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=773.64,352.21");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=689.58,368.98");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=777.63,372.03");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=762.50,452.72");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=652.38,405.28");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=650.05,329.21");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=686.54,357.52");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=776.54,338.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=729.22,307.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=704.33,360.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=736.93,358.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=775.51,313.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=729.59,386.50");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=675.84,320.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=690.53,393.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=697.47,309.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=703.50,382.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=676.06,423.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=773.53,387.44");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=660.27,339.00");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=623.97,429.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=716.19,406.53");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=733.94,331.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=734.94,284.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=745.73,368.56");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=634.07,363.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=672.71,377.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=667.76,265.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=782.31,358.52");
    }

}

