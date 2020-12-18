
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-1
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
        @display("p=366.00,247.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=374.08,328.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=310.27,356.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=240.28,367.21");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=251.11,354.76");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=308.70,337.48");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=300.28,377.98");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=378.23,170.75");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=441.10,316.07");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=323.38,379.75");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=313.28,422.90");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=210.65,302.22");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=298.53,337.21");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=350.62,345.19");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=272.15,224.58");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=335.62,361.01");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=308.28,300.84");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=236.20,435.03");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=243.23,333.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=260.20,336.60");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=274.30,315.89");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=370.37,294.49");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=314.89,282.69");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=382.14,414.93");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=227.28,415.30");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=265.62,384.93");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=283.49,423.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=309.95,373.69");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=436.85,252.82");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=394.00,353.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=301.66,362.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=226.74,368.31");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=279.47,295.06");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=290.17,300.84");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=276.80,351.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=394.14,207.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=404.27,315.82");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=243.18,345.70");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=240.52,282.31");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=289.92,314.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=287.69,348.91");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=232.66,341.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=337.24,278.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=380.31,298.45");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=324.27,278.93");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=151.36,401.91");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=175.48,327.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=259.75,321.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=396.10,392.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=459.42,280.90");
    }

}

