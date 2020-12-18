
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-9
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
        @display("p=422.00,473.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=448.75,449.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=491.62,468.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=542.88,462.02");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=500.58,518.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=447.79,593.03");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=456.70,580.70");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=482.84,542.44");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=431.62,571.46");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=434.56,515.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=428.57,539.23");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=421.99,526.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=389.90,607.66");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=434.27,431.84");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=455.99,466.17");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=505.27,481.54");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=601.00,403.17");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=513.95,524.73");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=462.24,689.37");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=389.30,570.48");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=524.91,599.11");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=410.26,560.57");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=458.47,430.39");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=443.68,521.13");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=413.40,550.34");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=408.42,627.73");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=366.26,484.62");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=512.00,459.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=445.77,549.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=586.67,467.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=484.79,508.01");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=455.13,529.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=471.01,561.61");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=457.01,551.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=443.17,539.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=400.07,521.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=382.99,552.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=438.22,447.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=365.47,519.28");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=503.71,431.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=449.25,370.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=583.97,504.00");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=557.05,465.44");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=538.94,559.32");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=401.79,659.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=510.38,617.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=488.53,567.97");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=471.42,545.40");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=371.12,542.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=388.05,517.23");
    }

}

