
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-8
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
        @display("p=766.00,550.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=796.14,464.89");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=797.55,450.36");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=839.53,360.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=813.35,378.17");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=750.90,532.11");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=878.20,420.50");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=770.67,478.55");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=877.17,361.52");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=805.06,297.06");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=703.36,509.17");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=795.03,484.82");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=754.89,427.63");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=822.26,400.14");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=867.71,389.18");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=762.53,570.07");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=785.16,391.56");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=788.57,424.81");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=891.59,391.86");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=836.39,316.24");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=844.70,521.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=865.76,484.07");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=819.14,353.45");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=846.55,382.62");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=794.86,350.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=773.00,526.16");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=824.29,439.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=889.39,420.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=761.91,375.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=826.66,453.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=750.26,555.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=785.68,534.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=708.67,460.62");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=864.73,298.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=835.25,286.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=771.53,459.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=768.54,448.33");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=765.27,398.77");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=861.59,325.53");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=820.55,423.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=725.12,600.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=773.08,418.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=794.79,368.77");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=837.89,400.71");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=745.98,311.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=779.16,562.79");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=725.71,473.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=890.44,458.60");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=827.09,372.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=803.28,377.80");
    }

}

