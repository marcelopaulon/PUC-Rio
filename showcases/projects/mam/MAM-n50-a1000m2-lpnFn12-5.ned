
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-5
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
        @display("p=697.00,478.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=722.01,468.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=747.37,489.36");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=655.84,457.88");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=685.48,485.19");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=715.73,458.48");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=649.60,483.48");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=714.50,494.45");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=559.03,480.59");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=593.11,453.51");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=651.65,551.90");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=713.45,447.38");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=805.18,433.23");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=625.60,411.82");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=710.82,580.37");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=769.65,411.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=657.20,533.40");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=675.99,473.71");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=726.70,455.36");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=694.33,491.08");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=633.34,523.35");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=713.25,568.29");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=715.86,541.63");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=624.55,451.24");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=672.24,487.89");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=775.76,534.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=653.23,436.48");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=805.07,412.72");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=650.00,403.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=643.45,527.00");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=694.90,419.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=795.20,518.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=712.10,506.20");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=627.18,548.28");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=685.39,497.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=721.81,485.21");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=662.97,475.42");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=781.84,545.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=730.16,403.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=673.64,505.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=707.78,465.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=749.04,422.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=741.49,546.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=583.72,408.45");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=751.79,467.65");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=695.34,462.75");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=749.54,500.76");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=741.83,507.89");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=703.57,545.59");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=662.66,511.99");
    }

}

