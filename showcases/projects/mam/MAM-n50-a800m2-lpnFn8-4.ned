
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-4
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
        @display("p=747.00,622.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=737.57,677.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=710.69,652.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=704.61,636.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=794.35,648.43");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=758.83,696.53");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=733.70,605.93");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=741.55,536.77");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=779.17,685.19");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=703.83,664.41");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=691.44,617.76");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=797.62,635.45");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=749.21,600.34");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=696.70,589.70");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=730.25,630.08");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=699.65,625.71");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=721.09,670.42");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=703.51,598.26");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=793.60,592.70");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=692.32,632.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=726.53,588.94");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=719.40,629.51");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=756.71,713.88");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=747.62,663.93");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=659.17,561.06");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=793.02,690.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=681.77,735.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=747.06,683.19");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=759.98,629.82");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=780.97,757.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=636.70,618.29");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=693.72,644.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=770.62,581.76");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=713.05,729.98");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=694.87,534.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=742.13,701.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=736.74,693.18");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=744.80,735.23");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=628.98,631.97");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=793.77,673.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=768.84,774.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=757.72,513.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=771.57,570.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=766.13,677.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=665.93,728.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=709.62,590.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=799.67,618.65");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=711.35,778.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=704.27,562.98");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=788.47,568.58");
    }

}

