
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-0
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
        @display("p=296.00,417.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=301.12,451.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=219.31,457.07");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=200.67,461.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=152.92,528.55");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=272.29,351.63");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=334.37,412.94");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=248.37,487.20");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=240.80,418.83");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=136.78,534.15");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=233.45,351.44");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=383.63,449.48");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=222.09,430.25");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=247.08,521.86");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=232.66,560.74");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=286.61,430.02");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=299.75,391.16");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=257.73,501.89");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=262.09,396.71");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=79.74,547.84");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=327.18,468.29");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=313.97,501.95");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=219.29,403.87");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=203.24,521.96");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=99.45,508.81");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=273.25,414.13");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=297.49,405.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=268.34,505.19");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=247.49,498.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=165.45,506.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=249.15,464.86");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=306.37,466.61");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=311.36,439.91");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=212.39,465.35");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=169.70,448.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=259.69,346.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=360.94,461.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=128.01,450.88");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=142.69,459.34");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=181.42,595.83");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=332.74,346.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=223.87,512.46");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=261.62,491.43");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=186.43,423.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=196.76,490.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=286.25,409.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=238.20,454.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=212.45,444.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=259.33,474.83");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=151.46,501.49");
    }

}

