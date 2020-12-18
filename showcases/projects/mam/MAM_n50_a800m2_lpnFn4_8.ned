
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_8
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=95.93,683.26");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=91.61,672.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=151.41,594.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=73.18,567.64");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=28.26,521.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=55.88,504.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=129.36,504.03");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=79.86,587.36");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=95.14,610.77");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=82.57,684.40");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=111.12,675.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=55.26,712.61");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=100.01,639.88");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=106.28,724.29");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=131.02,649.31");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=130.43,605.35");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=96.71,525.80");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=3.28,431.91");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=78.03,499.48");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=154.89,501.19");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=86.53,530.16");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=165.60,663.39");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=91.07,764.61");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=152.69,691.16");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=43.19,650.74");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=22.05,736.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=49.45,598.53");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=174.21,618.35");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=118.72,508.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=17.21,500.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=29.93,594.19");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=1.72,544.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=71.10,544.44");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=101.71,569.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=108.39,619.95");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=146.49,664.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=141.37,607.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=43.97,712.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=38.41,701.79");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=67.50,691.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=86.30,713.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=183.65,571.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=63.30,606.19");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=36.10,507.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=127.68,456.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=74.87,451.63");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=145.52,543.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=188.52,596.68");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=111.48,767.10");
    }

}

