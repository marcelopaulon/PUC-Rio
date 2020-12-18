
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_6
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
        @display("p=76.27,327.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=73.28,317.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=65.00,309.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=41.03,360.64");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=41.24,392.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=9.65,308.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=25.74,235.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=55.80,270.62");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=43.47,185.80");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=117.55,205.66");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=87.51,229.65");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=131.36,252.41");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=119.76,323.64");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=45.08,314.54");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=32.91,338.52");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=94.27,320.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=55.50,348.34");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=32.14,353.35");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=2.32,253.04");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=34.77,251.18");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=1.99,282.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=15.75,167.34");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=114.21,175.90");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=104.66,266.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=115.48,223.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=118.12,245.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=30.30,372.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=62.68,258.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=106.99,328.10");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=21.86,322.61");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=47.50,384.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=61.71,299.58");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=55.81,246.85");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=42.25,260.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=76.86,254.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=167.95,185.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=84.47,141.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=121.81,308.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=89.77,305.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=37.16,235.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=84.57,342.51");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=116.17,370.71");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=70.61,357.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=120.09,359.81");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=73.48,278.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=95.39,169.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=3.51,321.15");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=33.10,114.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=74.25,218.84");
    }

}

