
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn1-3
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
        @display("p=781.00,506.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=770.00,505.89");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=767.27,454.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=784.26,365.11");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=774.87,373.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=764.07,440.36");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=710.63,390.64");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=637.30,342.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=668.55,318.28");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=751.39,345.38");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=749.88,317.14");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=745.76,391.41");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=730.24,397.59");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=718.35,319.65");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=723.99,235.67");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=744.83,240.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=782.80,264.32");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=742.36,220.90");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=738.04,180.60");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=798.14,176.34");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=759.06,219.91");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=766.81,260.98");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=785.57,316.79");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=784.11,306.89");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=736.36,254.39");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=687.41,267.67");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=705.72,350.49");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=734.38,346.60");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=740.05,378.26");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=681.01,303.33");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=700.37,293.90");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=724.62,294.83");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=639.17,295.10");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=571.55,365.28");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=545.08,329.75");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=568.28,345.65");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=622.47,354.22");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=671.11,359.24");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=673.72,376.17");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=695.69,424.32");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=618.40,383.54");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=621.00,372.68");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=564.47,356.48");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=561.38,381.66");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=611.85,353.24");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=590.86,376.77");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=581.98,353.07");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=593.92,346.45");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=554.99,348.57");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=583.29,281.75");
    }

}

