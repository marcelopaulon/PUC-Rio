
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-0
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
        @display("p=121.00,486.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=198.75,486.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=251.14,534.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=265.55,593.63");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=309.40,589.44");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=365.71,575.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=393.17,509.45");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=117.83,507.79");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=166.35,471.69");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=322.29,602.67");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=274.31,548.90");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=220.34,576.18");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=320.38,561.82");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=367.02,485.50");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=111.01,394.65");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=209.47,527.45");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=155.13,552.80");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=179.52,592.97");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=291.85,607.24");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=295.18,622.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=399.75,580.42");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=200.04,440.05");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=277.77,510.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=193.09,596.60");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=234.87,596.99");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=341.51,674.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=349.22,613.32");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=358.54,434.72");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=120.75,438.16");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=153.52,528.65");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=190.23,505.91");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=272.05,635.31");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=327.55,571.97");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=382.89,482.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=368.29,560.44");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=67.02,455.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=250.89,418.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=343.56,539.51");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=313.26,635.75");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=277.16,607.42");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=339.84,620.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=360.66,542.57");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=94.34,422.96");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=137.68,461.31");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=173.12,516.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=305.72,665.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=396.60,632.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=450.77,607.65");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=384.71,587.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=132.71,489.88");
    }

}

