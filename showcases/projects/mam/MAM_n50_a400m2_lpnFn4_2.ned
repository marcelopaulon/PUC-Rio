
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_2
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
        @display("p=100.64,245.61");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=143.65,239.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=181.65,218.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=264.49,273.81");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=320.00,339.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=293.51,299.43");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=339.90,316.70");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=368.13,397.46");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=332.22,331.40");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=343.49,354.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=297.93,382.60");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=277.30,381.71");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=51.64,225.06");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=122.37,185.50");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=153.31,213.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=208.41,303.80");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=225.85,337.33");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=297.72,345.06");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=307.95,271.04");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=338.29,245.71");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=301.03,354.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=352.24,366.49");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=278.78,303.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=227.64,373.22");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=356.69,396.09");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=97.04,344.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=78.44,266.12");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=134.61,255.35");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=164.92,187.08");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=286.86,218.01");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=294.27,364.94");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=288.82,290.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=277.60,355.52");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=370.41,353.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=315.87,319.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=390.82,318.59");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=323.61,390.27");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=261.44,377.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=131.84,294.13");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=178.29,276.92");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=127.90,236.69");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=183.41,256.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=241.87,290.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=357.20,326.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=325.52,218.54");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=338.05,341.51");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=382.01,366.32");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=329.51,269.14");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=327.28,302.24");
    }

}

