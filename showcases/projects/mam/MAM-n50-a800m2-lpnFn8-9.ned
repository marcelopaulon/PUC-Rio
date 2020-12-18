
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-9
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
        @display("p=659.00,362.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=598.96,373.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=618.59,339.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=628.16,363.39");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=616.29,390.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=633.31,388.25");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=629.40,406.86");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=708.85,338.53");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=536.03,334.91");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=691.25,286.97");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=695.74,307.70");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=670.59,411.26");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=658.86,407.91");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=621.77,423.62");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=656.94,302.25");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=596.10,399.55");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=639.99,355.37");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=630.36,330.18");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=635.01,372.07");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=650.67,415.58");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=688.15,336.14");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=733.46,346.64");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=585.29,343.24");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=603.79,299.47");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=652.81,331.11");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=601.39,472.09");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=570.68,343.75");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=646.31,317.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=705.76,395.51");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=555.14,411.45");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=670.70,266.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=574.57,329.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=605.52,381.75");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=708.49,362.81");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=703.77,450.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=592.54,324.09");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=554.05,302.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=642.41,284.69");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=551.04,379.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=582.48,387.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=590.25,461.54");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=626.29,434.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=664.20,376.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=575.82,399.88");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=699.68,324.68");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=674.97,382.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=613.29,320.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=554.51,353.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=645.30,430.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=709.15,423.15");
    }

}

