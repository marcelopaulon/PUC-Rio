
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn1-1
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
        @display("p=686.00,707.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=705.74,707.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=646.77,672.23");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=697.49,702.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=732.35,635.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=681.20,683.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=658.04,649.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=733.37,675.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=722.28,633.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=774.26,601.83");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=792.73,541.45");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=776.41,580.20");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=722.88,602.42");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=786.30,529.14");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=788.66,511.71");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=718.76,658.73");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=712.68,649.57");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=638.45,610.78");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=654.39,631.33");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=622.90,555.08");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=590.50,546.90");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=613.46,501.02");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=601.65,500.00");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=528.42,495.13");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=536.56,501.30");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=688.91,516.88");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=702.83,520.49");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=702.84,492.15");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=733.78,551.43");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=745.42,476.24");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=684.62,399.19");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=698.04,431.74");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=646.94,496.54");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=636.39,514.21");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=699.03,479.28");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=715.55,536.72");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=724.68,497.98");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=766.40,470.50");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=763.47,449.50");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=756.19,415.84");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=685.77,359.99");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=730.69,292.31");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=750.59,250.10");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=774.30,281.31");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=771.75,249.15");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=756.84,174.52");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=703.14,157.94");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=709.70,207.02");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=642.13,202.47");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=671.16,271.84");
    }

}

