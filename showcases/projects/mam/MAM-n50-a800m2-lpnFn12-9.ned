
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-9
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
        @display("p=476.00,564.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=520.75,497.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=577.83,462.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=607.58,418.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=625.73,414.41");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=487.86,559.43");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=449.62,455.73");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=548.51,443.54");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=614.55,447.99");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=610.29,438.26");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=503.03,546.96");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=584.04,429.48");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=616.75,471.02");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=588.41,406.43");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=670.92,343.53");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=514.49,618.04");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=576.66,450.31");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=635.39,524.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=553.67,487.06");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=685.30,374.68");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=471.84,533.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=483.41,494.47");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=488.10,455.91");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=621.82,432.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=527.95,394.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=422.29,607.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=557.25,497.30");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=584.62,493.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=615.53,355.69");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=643.02,416.98");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=452.42,547.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=514.41,433.93");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=514.06,447.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=643.33,375.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=581.69,351.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=459.12,528.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=530.15,543.96");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=646.33,455.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=659.40,386.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=593.40,321.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=518.62,550.62");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=518.61,568.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=592.20,453.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=567.07,355.66");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=535.35,385.88");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=462.15,565.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=517.91,463.07");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=569.42,490.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=596.44,416.52");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=552.53,466.02");
    }

}

