
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-5
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
        @display("p=648.00,204.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=639.11,231.36");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=630.35,245.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=602.17,273.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=649.93,260.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=680.73,313.72");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=659.28,294.52");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=708.73,208.30");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=712.26,256.77");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=705.04,290.81");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=687.74,289.48");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=648.02,246.85");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=775.67,301.51");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=586.98,272.04");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=609.73,138.08");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=648.65,282.09");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=599.20,168.55");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=676.40,261.03");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=682.34,243.68");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=728.16,292.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=619.32,212.42");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=666.94,179.18");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=647.20,214.88");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=588.43,262.11");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=569.59,294.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=741.93,246.26");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=670.56,321.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=639.32,291.68");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=568.85,157.87");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=600.18,311.32");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=573.74,282.19");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=640.25,254.95");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=701.32,276.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=717.95,292.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=726.15,245.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=672.21,219.90");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=636.46,280.08");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=656.07,166.29");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=619.67,250.82");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=662.32,271.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=644.02,330.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=616.50,268.28");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=644.56,163.05");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=598.52,243.57");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=596.24,155.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=602.04,292.78");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=693.81,197.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=650.87,398.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=715.57,312.20");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=652.89,183.31");
    }

}

