
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-2
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
        @display("p=495.00,636.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=492.98,592.35");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=590.20,585.72");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=577.87,614.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=533.93,640.29");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=487.46,679.22");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=439.59,533.35");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=569.72,573.78");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=615.98,654.78");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=510.98,611.66");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=448.77,625.54");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=512.60,641.04");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=529.69,598.81");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=587.23,646.36");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=551.41,648.58");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=487.10,718.05");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=462.23,674.91");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=549.82,603.63");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=529.17,558.31");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=531.93,546.54");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=503.64,715.03");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=464.80,648.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=574.36,519.27");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=604.25,523.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=435.25,655.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=417.44,577.05");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=515.79,539.53");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=619.58,677.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=611.87,642.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=493.70,658.15");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=581.33,654.45");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=478.10,574.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=561.14,586.91");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=518.18,578.71");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=556.34,706.45");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=470.40,605.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=444.76,559.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=551.09,522.30");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=575.39,712.59");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=506.75,587.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=519.64,597.22");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=403.42,612.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=585.14,550.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=634.28,635.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=477.84,624.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=456.66,568.80");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=454.41,516.61");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=671.63,566.81");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=564.38,599.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=568.78,657.95");
    }

}

