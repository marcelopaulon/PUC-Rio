
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn1-8
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
        @display("p=107.00,12.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=105.51,1.00");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=112.13,28.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=115.52,40.67");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=187.38,67.16");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=176.57,144.49");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=186.68,46.65");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=140.97,72.70");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=103.61,63.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=59.54,103.65");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=138.94,144.72");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=121.52,166.63");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=132.77,174.42");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=63.97,181.74");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=146.67,187.79");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=151.22,236.64");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=57.97,214.45");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=2.84,203.37");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=89.16,224.31");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=93.16,288.44");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=84.02,300.14");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=145.30,290.35");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=122.38,200.88");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=159.85,169.86");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=155.48,151.49");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=149.99,131.26");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=132.02,99.92");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=172.86,55.62");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=135.06,53.26");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=103.40,40.78");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=179.76,10.23");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=169.22,34.44");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=218.55,28.13");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=296.34,4.98");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=237.75,55.42");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=222.99,79.31");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=197.09,141.15");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=261.51,194.54");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=289.52,123.81");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=379.42,97.62");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=374.19,186.88");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=335.10,159.15");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=349.73,180.09");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=255.35,156.45");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=280.38,101.01");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=327.33,110.76");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=306.70,118.40");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=341.28,126.90");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=336.35,135.81");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=341.85,167.82");
    }

}

