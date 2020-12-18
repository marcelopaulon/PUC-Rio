
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-4
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
        @display("p=373.00,373.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=350.73,386.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=356.04,364.80");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=296.04,374.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=388.08,347.94");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=388.55,360.93");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=395.33,391.43");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=345.83,347.61");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=317.88,363.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=286.57,397.62");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=336.75,366.67");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=321.72,330.95");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=310.13,350.16");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=386.83,379.21");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=267.42,341.80");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=327.80,376.67");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=372.49,342.80");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=319.09,312.61");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=358.98,323.53");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=372.84,392.23");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=352.73,289.20");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=332.56,349.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=262.97,355.52");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=296.91,291.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=295.80,319.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=285.78,349.48");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=358.43,339.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=266.93,376.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=335.16,299.82");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=300.11,360.74");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=383.08,394.47");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=395.37,321.48");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=304.46,397.65");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=307.18,374.78");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=398.66,332.32");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=297.16,309.00");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=282.88,331.61");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=375.91,356.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=224.89,370.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=349.61,372.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=338.33,319.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=368.75,288.85");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=228.97,319.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=378.88,305.59");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=295.79,345.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=322.52,342.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=280.78,283.56");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=293.82,384.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=267.48,386.97");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=385.13,287.56");
    }

}

