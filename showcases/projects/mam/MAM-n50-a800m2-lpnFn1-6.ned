
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn1-6
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
        @display("p=39.00,460.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=20.29,400.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=101.05,344.78");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=61.75,361.91");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=145.20,401.43");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=153.10,381.02");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=98.67,300.20");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=84.19,316.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=74.31,246.56");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=149.19,254.13");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=116.33,195.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=123.67,221.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=86.90,156.26");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=63.50,101.35");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=73.92,65.81");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=65.08,70.73");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=92.32,117.28");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=145.87,184.09");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=114.34,249.68");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=87.06,246.09");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=132.54,164.08");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=136.54,194.17");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=156.40,148.99");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=234.50,201.95");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=273.60,124.66");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=249.30,55.26");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=244.18,38.32");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=217.28,96.28");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=197.06,176.73");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=225.43,148.49");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=131.05,174.22");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=100.83,219.91");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=80.12,231.93");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=125.37,315.78");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=171.95,280.22");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=160.48,270.27");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=179.45,293.97");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=274.04,289.16");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=238.75,295.97");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=218.98,331.60");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=171.77,362.79");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=201.13,307.15");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=257.35,369.52");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=251.22,412.15");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=257.91,448.41");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=292.29,415.35");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=301.80,383.58");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=240.33,397.50");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=265.91,378.65");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=339.06,445.03");
    }

}

