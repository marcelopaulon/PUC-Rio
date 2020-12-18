
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-8
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
        @display("p=841.00,267.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=841.90,256.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=787.37,317.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=751.13,308.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=713.57,383.76");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=659.29,301.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=700.91,354.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=643.17,295.67");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=660.62,282.20");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=674.61,267.38");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=733.04,198.69");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=701.78,146.54");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=646.94,178.97");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=802.74,187.51");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=837.39,244.75");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=828.21,289.19");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=758.52,315.74");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=699.30,339.36");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=686.90,341.64");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=722.06,280.22");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=697.06,229.31");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=577.77,260.60");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=676.44,291.79");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=779.59,172.88");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=685.65,111.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=608.12,183.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=862.29,228.55");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=821.82,234.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=774.06,246.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=744.18,279.75");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=759.20,360.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=622.57,344.66");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=647.51,358.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=643.24,347.49");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=731.59,242.01");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=684.77,263.92");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=719.73,159.60");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=743.75,102.35");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=680.52,212.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=833.06,308.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=815.74,258.12");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=788.97,338.49");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=799.23,278.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=718.52,430.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=573.27,272.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=713.57,373.42");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=630.87,293.48");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=658.51,266.41");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=644.45,250.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=783.12,223.97");
    }

}

