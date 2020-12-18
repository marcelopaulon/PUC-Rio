
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-6
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
        @display("p=374.00,774.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=419.58,788.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=406.56,768.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=417.66,711.70");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=447.69,640.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=488.90,557.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=489.71,592.24");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=512.23,663.26");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=605.67,690.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=610.46,700.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=524.61,688.06");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=586.26,612.17");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=624.97,585.13");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=401.70,797.04");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=484.88,776.56");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=417.82,764.51");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=456.04,696.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=436.18,670.44");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=493.69,577.44");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=477.82,632.63");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=530.00,647.31");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=641.52,721.40");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=639.70,705.00");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=589.95,746.31");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=676.89,642.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=577.54,662.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=414.22,749.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=456.64,786.27");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=327.22,784.01");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=457.05,799.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=438.21,599.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=459.59,576.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=504.73,585.54");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=494.53,706.46");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=568.57,667.60");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=622.44,709.62");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=468.76,665.19");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=589.57,652.56");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=626.30,603.92");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=440.33,772.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=426.01,774.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=396.00,769.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=394.56,685.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=439.51,732.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=455.30,471.72");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=514.23,597.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=611.85,664.55");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=577.30,625.34");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=584.85,688.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=538.19,706.76");
    }

}

