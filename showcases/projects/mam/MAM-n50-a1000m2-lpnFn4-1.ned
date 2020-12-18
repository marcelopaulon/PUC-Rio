
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-1
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
        @display("p=213.00,495.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=146.61,560.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=66.76,545.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=36.59,556.88");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=59.75,520.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=38.73,482.93");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=41.99,446.88");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=110.76,511.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=103.58,521.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=99.38,544.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=111.35,632.68");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=139.82,642.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=133.38,604.16");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=256.05,487.92");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=120.34,494.32");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=28.36,503.63");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=42.88,466.66");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=66.89,507.78");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=108.92,533.22");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=134.58,482.77");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=181.62,581.64");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=108.55,555.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=6.21,515.46");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=163.38,621.42");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=163.01,567.84");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=131.91,682.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=145.61,494.66");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=161.28,464.40");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=37.58,516.64");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=40.86,544.64");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=51.34,486.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=71.94,482.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=76.50,446.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=70.74,471.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=54.13,502.47");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=90.82,449.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=166.55,657.14");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=139.08,551.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=149.99,598.51");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=303.50,459.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=124.06,515.58");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=99.91,590.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=22.93,588.15");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=147.04,482.40");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=102.00,409.13");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=31.51,386.40");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=83.29,516.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=78.11,456.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=56.35,456.38");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=112.40,652.15");
    }

}

