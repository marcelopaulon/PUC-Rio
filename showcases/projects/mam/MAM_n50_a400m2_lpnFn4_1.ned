
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_1
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=97.83,88.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=125.59,0.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=180.99,19.81");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=188.92,9.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=141.89,39.03");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=145.06,1.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=229.06,47.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=207.65,57.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=192.78,50.55");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=235.58,116.77");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=228.34,139.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=144.08,191.51");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=81.57,169.85");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=30.95,115.73");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=138.96,16.06");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=246.97,82.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=201.01,41.77");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=117.38,22.06");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=153.73,52.26");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=216.88,32.79");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=231.09,70.35");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=140.63,130.91");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=205.23,128.81");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=270.12,224.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=137.69,169.97");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=68.73,62.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=77.17,27.06");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=95.61,64.80");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=136.54,27.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=189.54,27.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=59.17,1.71");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=226.09,4.04");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=283.79,91.71");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=136.75,112.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=161.14,66.58");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=318.37,67.17");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=162.13,186.99");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=85.07,231.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=92.94,159.91");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=116.22,120.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=150.11,24.16");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=203.19,21.45");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=138.68,57.76");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=104.48,5.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=131.10,65.84");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=278.10,30.07");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=253.68,41.49");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=157.28,8.69");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=260.63,145.08");
    }

}

