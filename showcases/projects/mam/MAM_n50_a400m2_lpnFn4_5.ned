
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_5
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
        @display("p=28.08,292.33");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=73.45,312.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=134.77,310.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=159.90,297.42");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=144.62,316.18");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=114.00,280.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=156.71,316.47");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=137.22,285.99");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=102.97,273.07");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=65.33,356.65");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=30.07,332.47");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=31.85,321.79");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=163.96,353.63");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=27.47,264.46");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=86.03,380.60");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=145.11,300.81");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=199.28,343.69");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=110.19,321.80");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=78.00,256.40");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=133.60,363.08");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=153.01,256.31");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=114.03,200.90");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=117.75,370.43");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=2.65,347.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=18.44,288.78");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=114.58,331.22");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=37.80,391.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=85.97,328.45");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=156.91,344.68");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=229.33,366.07");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=135.35,340.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=53.63,352.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=88.78,370.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=148.71,275.10");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=112.77,255.85");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=84.14,397.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=62.03,241.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=129.04,322.73");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=64.69,340.71");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=36.30,281.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=53.68,289.65");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=134.09,256.13");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=214.59,291.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=95.97,358.05");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=162.52,283.18");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=179.29,277.60");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=143.29,189.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=94.31,244.65");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=117.03,357.35");
    }

}

