
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_6
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
        @display("p=144.22,277.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=203.34,296.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=280.96,239.39");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=309.59,267.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=252.61,259.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=341.72,296.53");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=349.89,319.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=342.66,332.81");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=371.33,357.07");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=360.83,309.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=337.58,377.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=350.96,355.15");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=122.83,376.34");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=212.04,225.62");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=171.02,282.91");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=325.31,212.22");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=332.97,242.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=290.64,271.50");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=380.10,211.57");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=311.62,290.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=299.13,289.85");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=397.06,300.63");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=371.24,254.21");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=295.35,387.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=305.12,378.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=116.76,322.72");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=165.30,272.22");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=139.99,331.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=268.37,314.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=314.53,257.55");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=262.73,215.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=279.02,321.47");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=354.00,329.09");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=344.41,286.28");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=394.55,325.58");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=326.78,331.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=336.91,355.52");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=389.81,356.74");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=129.71,226.39");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=218.29,263.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=226.95,275.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=254.11,161.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=313.09,325.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=246.95,287.64");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=294.35,319.06");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=337.05,275.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=273.63,303.68");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=295.99,345.48");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=384.17,338.40");
    }

}

