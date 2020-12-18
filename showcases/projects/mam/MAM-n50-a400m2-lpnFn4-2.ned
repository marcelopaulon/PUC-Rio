
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-2
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
        @display("p=390.00,98.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=381.38,140.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=362.26,152.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=347.77,63.91");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=397.51,76.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=373.76,56.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=331.57,88.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=360.78,34.49");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=351.05,40.58");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=280.39,50.29");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=263.63,51.90");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=248.13,41.18");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=271.70,131.62");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=329.98,116.03");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=370.18,163.36");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=351.73,187.26");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=350.52,75.01");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=340.81,120.67");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=293.28,97.80");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=396.07,44.88");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=342.40,25.64");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=257.57,6.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=242.51,55.84");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=235.76,12.26");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=190.01,12.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=188.71,130.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=394.15,178.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=336.22,219.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=382.79,199.29");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=336.50,103.62");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=393.14,57.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=330.68,55.38");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=317.79,86.52");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=371.22,14.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=363.07,95.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=261.16,118.93");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=302.43,35.51");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=197.47,49.10");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=317.68,192.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=377.27,97.86");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=364.69,139.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=398.33,109.81");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=285.54,9.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=388.62,5.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=281.66,35.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=340.06,75.77");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=360.91,60.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=265.54,38.01");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=272.01,13.25");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=243.19,98.35");
    }

}

