
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-3
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
        @display("p=418.00,241.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=398.02,217.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=368.16,266.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=370.26,348.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=299.32,360.65");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=480.50,191.27");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=406.82,268.31");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=445.19,288.47");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=367.48,332.61");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=305.73,280.85");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=387.27,217.94");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=372.94,285.78");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=275.38,260.54");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=399.70,410.64");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=324.19,328.12");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=374.69,249.65");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=342.23,142.80");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=315.80,204.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=319.05,276.20");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=243.51,372.62");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=487.54,210.16");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=409.62,255.08");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=297.16,205.54");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=305.65,298.40");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=279.44,387.15");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=441.84,212.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=360.51,172.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=419.05,219.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=328.93,381.66");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=270.98,376.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=463.03,275.24");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=407.13,212.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=341.19,216.31");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=281.13,360.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=265.79,355.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=431.42,220.89");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=399.14,201.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=405.56,342.62");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=389.28,335.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=376.52,369.72");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=442.25,256.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=381.45,173.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=389.95,246.05");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=287.54,398.00");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=306.19,408.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=389.89,207.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=323.71,153.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=383.61,347.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=350.08,416.98");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=287.21,325.76");
    }

}

