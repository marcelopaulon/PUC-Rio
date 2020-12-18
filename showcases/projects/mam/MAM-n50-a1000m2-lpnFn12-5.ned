
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
        @display("p=582.00,337.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=559.80,318.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=593.99,271.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=608.54,218.63");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=600.07,307.55");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=577.22,362.59");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=600.33,320.78");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=667.29,272.33");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=591.79,206.63");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=588.84,317.18");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=567.69,242.35");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=475.45,336.45");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=581.88,253.14");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=587.28,243.06");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=670.94,370.01");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=622.42,389.32");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=534.29,358.22");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=649.10,338.96");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=618.84,237.96");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=612.40,269.94");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=637.27,394.13");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=612.37,331.89");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=638.09,190.80");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=659.35,183.99");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=541.13,266.81");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=645.90,382.51");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=553.67,328.05");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=631.61,272.14");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=570.27,134.01");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=598.31,340.65");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=606.06,399.39");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=548.79,220.63");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=543.80,195.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=582.63,188.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=620.37,287.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=636.94,297.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=591.18,394.30");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=578.17,265.47");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=642.54,226.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=570.49,288.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=563.26,259.61");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=603.40,370.89");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=572.87,303.13");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=539.64,176.61");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=523.82,330.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=659.05,349.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=538.57,399.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=593.75,174.43");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=674.09,155.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=624.25,309.23");
    }

}

