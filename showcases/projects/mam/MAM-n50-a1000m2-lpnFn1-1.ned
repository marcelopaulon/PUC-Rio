
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn1-1
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
        @display("p=980.00,389.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=907.93,348.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=887.50,338.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=864.86,272.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=854.77,248.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=831.68,268.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=865.21,196.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=857.87,224.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=768.66,218.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=802.32,285.66");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=871.54,240.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=928.94,269.81");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=882.56,255.60");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=822.03,210.42");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=807.44,176.90");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=823.73,188.36");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=920.98,207.89");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=980.25,254.83");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=967.73,192.63");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=959.74,209.19");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=974.41,181.48");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=984.02,118.75");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=993.91,101.31");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=907.84,81.46");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=950.41,157.63");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=931.75,242.75");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=886.31,241.90");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=895.58,213.05");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=874.02,212.64");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=970.86,226.82");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=979.04,293.90");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=936.11,226.81");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=879.09,187.57");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=980.74,147.30");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=892.60,164.10");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=916.10,178.14");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=995.92,239.53");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=989.83,180.54");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=979.35,243.57");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=964.79,283.27");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=922.29,287.02");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=917.31,309.18");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=925.51,325.91");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=893.12,373.13");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=943.19,291.92");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=911.84,278.46");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=864.98,336.76");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=842.12,319.16");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=773.58,328.33");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=763.33,411.84");
    }

}

