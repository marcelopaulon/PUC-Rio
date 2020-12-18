
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_9
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=110.68,278.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=82.33,267.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=99.38,255.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=68.04,335.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=113.35,359.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=114.78,383.91");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=70.63,294.60");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=69.74,265.78");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=131.53,275.45");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=119.86,271.37");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=21.30,319.70");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=76.09,386.62");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=154.57,356.68");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=36.94,314.38");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=89.11,366.93");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=94.45,319.72");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=103.41,327.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=77.09,374.61");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=158.87,322.51");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=170.22,392.61");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=118.15,211.55");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=115.20,370.85");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=69.10,320.79");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=74.65,183.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=142.80,360.71");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=117.59,347.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=142.34,371.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=80.12,304.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=191.76,273.34");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=56.65,220.37");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=92.40,185.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=30.44,258.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=169.23,336.83");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=97.76,355.98");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,286.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=113.63,311.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=47.51,179.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=85.94,243.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=110.24,398.47");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=125.12,362.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=149.95,379.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=82.00,346.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=158.83,288.80");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=55.61,238.95");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=37.81,182.61");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=78.74,328.39");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=95.56,337.83");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=136.56,352.40");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=133.46,316.71");
    }

}

