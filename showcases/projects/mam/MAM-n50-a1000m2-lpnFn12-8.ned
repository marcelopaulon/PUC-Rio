
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-8
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
        @display("p=897.00,548.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=913.06,482.26");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=953.84,463.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=950.43,441.95");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=946.92,472.21");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=889.91,534.28");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=895.72,482.62");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=918.53,430.02");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=937.15,435.99");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=933.72,413.17");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=982.89,568.10");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=886.27,514.91");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=931.99,506.26");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=964.33,455.75");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=864.45,463.95");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=827.18,563.65");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=849.96,423.90");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=998.00,435.86");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=954.68,451.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=931.25,485.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=969.80,500.91");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=939.75,578.10");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=958.41,508.26");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=923.54,464.47");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=953.78,393.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=872.15,558.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=842.91,459.85");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=934.72,460.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=969.24,433.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=885.21,487.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=889.75,577.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=854.55,503.95");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=970.62,471.67");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=941.89,422.77");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=879.24,448.42");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=858.52,515.36");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=990.86,478.73");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=931.60,396.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=922.27,452.02");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=979.96,385.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=977.93,532.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=880.23,496.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=958.91,477.60");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=939.55,447.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=994.75,456.76");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=929.81,625.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=850.97,408.49");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=974.70,489.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=978.32,441.88");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=914.06,420.76");
    }

}

