
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn1-2
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
        @display("p=118.00,241.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=72.59,203.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=51.49,183.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=64.13,281.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=20.39,258.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=30.80,192.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=12.34,185.10");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=76.20,222.06");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=48.15,224.88");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=76.50,126.72");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=83.72,72.45");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=8.13,31.58");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=82.92,91.38");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=61.17,43.80");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=56.74,75.04");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=105.68,93.08");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=120.55,108.23");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=67.09,165.47");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=136.03,173.65");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=104.15,82.12");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=106.48,181.38");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=120.67,182.73");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=163.46,195.80");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=143.32,229.24");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=90.37,262.42");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=75.09,242.89");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=82.15,252.25");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=100.32,119.15");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=28.65,78.65");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=41.79,86.99");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=31.85,106.00");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=33.06,148.10");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=79.37,189.45");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=11.47,211.49");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=2.98,194.08");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=80.28,55.77");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=166.25,45.91");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=160.97,62.88");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=249.65,79.30");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=175.54,38.82");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=185.96,23.05");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=185.30,53.30");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=236.92,57.69");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=261.70,82.69");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=273.76,42.93");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=235.95,23.01");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=282.18,78.79");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=331.01,62.46");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=297.35,71.41");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=302.00,30.24");
    }

}

