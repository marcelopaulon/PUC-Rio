
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
        @display("p=5.00,669.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=55.13,627.88");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=48.80,639.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=108.44,630.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=126.20,638.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=200.04,615.09");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=172.61,567.10");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=41.92,604.57");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=31.39,617.37");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=19.83,627.41");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=128.55,606.20");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=115.77,646.82");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=136.86,685.81");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=248.80,562.64");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=1.14,688.87");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=55.61,698.74");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=13.98,564.73");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=146.98,594.04");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=161.20,613.80");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=185.82,615.84");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=228.99,589.81");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=64.77,749.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=57.52,563.94");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=38.65,653.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=44.05,582.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=123.40,661.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=288.08,584.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=136.32,533.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=75.91,603.24");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=130.78,618.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=56.90,609.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=91.84,683.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=136.29,720.65");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=214.67,627.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=181.34,599.42");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=12.86,652.00");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=25.83,705.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=57.95,594.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=144.61,637.20");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=155.21,627.56");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=211.85,530.56");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=151.49,537.11");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=69.88,705.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=57.45,672.40");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=108.90,665.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=138.33,664.56");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=75.40,685.12");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=248.01,619.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=185.88,583.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=23.95,674.45");
    }

}

