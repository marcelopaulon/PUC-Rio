
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn1-3
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
        @display("p=191.00,104.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=230.46,183.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=248.72,179.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=250.01,191.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=182.88,258.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=190.19,232.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=189.51,140.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=256.56,158.82");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=287.19,239.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=335.26,277.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=390.86,246.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=348.07,297.86");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=313.00,308.15");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=279.71,247.13");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=293.76,230.69");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=316.35,179.03");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=300.98,185.71");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=267.19,188.31");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=256.45,140.02");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=227.73,71.00");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=181.56,79.56");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=190.66,12.32");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=208.06,74.90");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=151.88,71.90");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=137.42,75.74");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=120.45,69.40");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=116.83,145.84");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=95.28,187.60");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=50.69,189.96");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=55.09,128.31");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=16.89,196.28");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=40.64,258.31");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=38.29,306.77");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=8.71,291.24");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=12.88,353.83");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=26.76,272.08");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=107.05,307.51");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=125.50,279.21");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=132.47,257.97");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=162.78,253.76");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=173.29,195.48");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=168.41,180.71");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=138.98,223.67");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=166.28,274.37");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=109.74,232.84");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=102.06,276.29");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=72.63,246.53");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=33.59,173.26");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=19.92,251.86");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=31.02,243.42");
    }

}

