
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_4
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=7.44,308.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=33.15,265.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=20.57,216.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=58.62,286.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=11.45,237.61");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=39.23,190.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=102.36,260.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=121.12,239.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=137.39,253.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=74.08,239.71");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=110.16,240.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=102.21,225.74");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=68.10,311.74");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=19.48,302.40");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=71.06,190.13");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=32.84,216.72");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=61.83,299.50");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=46.33,215.74");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=33.47,204.01");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=94.76,245.48");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=154.83,281.70");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=143.30,227.60");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=78.13,307.21");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,328.71");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=135.45,182.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=135.53,292.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=54.66,316.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=45.69,281.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=45.88,244.35");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,339.81");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=79.60,279.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=4.87,283.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=97.83,277.77");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=85.62,153.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=57.81,198.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=81.01,268.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=148.79,290.33");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=110.74,323.55");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=124.24,281.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=26.38,348.43");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=73.85,212.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=99.76,177.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=132.16,236.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=33.39,245.16");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=10.43,222.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=166.63,240.74");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=80.21,200.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=209.00,299.78");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=13.81,276.54");
    }

}

