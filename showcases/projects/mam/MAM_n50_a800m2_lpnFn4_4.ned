
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_4
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
        @display("p=4.24,709.40");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=30.43,731.55");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=36.47,706.37");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=4.09,638.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=16.88,701.05");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=29.83,719.02");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=5.42,762.76");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=60.73,736.66");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=111.33,732.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=157.39,695.09");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=123.79,690.04");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=149.49,738.56");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=116.55,711.88");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=8.04,695.45");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=38.70,740.23");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=36.93,773.03");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=43.30,630.95");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=12.36,655.60");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=43.61,721.85");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=26.24,777.38");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=120.23,678.53");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=52.50,784.17");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=161.92,613.29");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=218.07,660.40");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=239.35,707.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=101.34,685.90");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=34.84,675.45");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=123.92,728.47");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=46.38,612.56");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=1.86,673.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=69.13,773.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=68.59,711.27");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=23.40,752.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=103.88,675.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=96.62,664.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=149.44,715.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=90.66,607.25");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=175.44,744.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=163.45,625.56");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=72.80,728.11");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=111.61,769.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=46.03,712.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=81.11,592.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=56.16,627.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=22.81,660.03");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=65.24,761.33");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=69.37,750.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=89.69,747.02");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=73.79,674.59");
    }

}

