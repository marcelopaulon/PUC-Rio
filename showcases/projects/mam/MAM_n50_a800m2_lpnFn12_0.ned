
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_0
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
        @display("p=83.46,680.21");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=18.17,702.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=21.85,714.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=27.76,649.93");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=53.86,705.95");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=111.06,703.81");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=23.99,762.43");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=20.26,774.38");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=30.06,607.29");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=47.40,637.63");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=128.60,669.35");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=3.41,700.93");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=32.02,788.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=15.84,728.29");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=122.02,609.20");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=69.84,762.23");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=47.57,798.27");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=3.54,744.53");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=69.16,707.00");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=126.25,703.22");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=107.81,668.28");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=18.02,746.14");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=3.08,719.44");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=21.97,641.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=150.42,670.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=66.28,653.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=32.23,681.96");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=41.37,662.69");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=101.25,600.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=139.05,650.25");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=159.52,661.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=35.91,703.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=64.19,748.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=32.39,670.45");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=121.21,683.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=147.91,738.85");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=36.70,755.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=98.16,718.77");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=59.75,595.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=135.11,692.10");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=75.16,659.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=22.89,674.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=77.95,718.24");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=80.43,668.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=97.93,648.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=94.40,631.60");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=2.94,678.11");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=13.98,796.09");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=47.26,597.56");
    }

}

