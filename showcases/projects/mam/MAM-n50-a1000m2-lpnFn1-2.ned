
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn1-2
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
        @display("p=45.00,447.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=91.59,394.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=107.19,445.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=116.47,533.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=61.64,465.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=30.36,476.70");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=92.16,495.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=80.95,514.31");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=136.84,560.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=128.47,569.77");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=124.31,602.14");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=53.18,608.49");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=7.63,597.54");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=25.71,626.05");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=16.47,611.50");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=45.19,573.77");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=83.90,645.69");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=89.57,634.73");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=106.58,624.60");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=69.79,513.27");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=26.18,549.60");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=87.29,484.69");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=48.24,478.55");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=22.09,460.15");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=63.89,489.82");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=53.41,493.76");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=76.10,480.10");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=104.74,530.78");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=100.84,520.84");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=26.70,573.55");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=38.06,620.59");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=78.30,620.69");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=138.27,647.78");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=188.22,714.30");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=282.19,709.95");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=238.02,650.71");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=224.03,717.85");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=279.33,782.57");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=195.87,750.65");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=144.50,726.42");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=131.01,750.73");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=143.13,675.55");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=79.74,602.15");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=2.31,580.06");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=45.78,663.77");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=88.69,682.80");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=90.04,745.47");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=57.87,771.47");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=52.58,811.86");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=110.35,769.04");
    }

}

