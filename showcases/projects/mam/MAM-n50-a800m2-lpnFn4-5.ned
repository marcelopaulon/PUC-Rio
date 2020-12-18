
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-5
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
        @display("p=303.00,757.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=355.34,778.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=424.19,799.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=408.50,725.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=457.25,719.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=470.96,662.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=459.64,640.11");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=441.81,624.48");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=408.23,582.29");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=325.11,558.29");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=328.60,625.20");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=406.37,594.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=419.52,570.60");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=263.41,719.97");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=357.45,796.46");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=412.02,774.73");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=440.75,767.90");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=439.65,729.15");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=535.03,714.39");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=406.24,657.35");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=433.56,681.74");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=443.42,568.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=312.15,557.99");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=323.75,538.62");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=363.70,572.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=457.40,597.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=230.31,759.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=353.25,766.08");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=438.18,791.69");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=401.86,677.57");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=441.64,710.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=422.54,640.90");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=523.89,618.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=448.00,635.75");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=465.03,568.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=335.49,538.84");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=274.20,551.01");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=343.16,621.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=354.72,596.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=322.59,736.95");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=355.54,718.29");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=382.52,774.51");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=382.55,750.60");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=466.36,785.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=492.89,626.56");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=459.64,663.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=530.63,634.72");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=411.87,492.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=345.27,503.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=334.68,607.77");
    }

}

