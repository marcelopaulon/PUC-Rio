
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-7
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
        @display("p=945.00,221.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=957.71,226.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=969.30,131.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=897.99,191.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=860.36,204.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=821.55,235.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=805.82,195.17");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=809.45,212.05");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=750.51,174.15");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=710.71,201.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=741.52,153.06");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=706.77,170.53");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=652.86,155.77");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=933.53,219.67");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=896.78,158.42");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=932.64,202.58");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=882.64,191.63");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=839.89,243.14");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=810.84,161.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=802.53,247.90");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=864.81,159.67");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=667.31,196.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=746.62,110.43");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=753.86,160.61");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=794.57,133.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=650.48,132.68");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=978.59,171.09");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=950.72,252.14");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=946.10,80.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=957.57,183.20");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=845.29,297.70");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=837.75,183.48");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=844.86,202.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=845.11,269.21");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=709.35,140.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=706.59,113.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=731.21,185.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=619.11,175.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=567.55,112.05");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=982.47,245.23");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=969.57,150.91");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=949.28,188.81");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=884.72,243.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=946.69,163.13");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=777.22,310.81");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=804.33,151.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=796.09,181.61");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=698.36,177.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=725.63,258.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=768.37,216.79");
    }

}

