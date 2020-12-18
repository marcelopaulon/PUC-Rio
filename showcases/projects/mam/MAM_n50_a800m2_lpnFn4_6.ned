
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_6
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=94.62,117.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=137.81,150.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=113.50,86.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=145.48,49.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=156.41,137.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=165.81,126.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=255.40,96.02");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=242.71,100.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=264.94,99.19");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=246.33,176.50");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=213.64,156.64");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=283.82,205.03");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=61.78,125.74");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=127.13,162.16");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=181.98,143.25");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=102.31,80.86");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=182.68,41.56");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=69.25,170.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=143.88,134.75");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=198.52,52.45");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=255.82,126.39");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=232.96,69.28");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=231.00,184.98");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=189.81,72.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=301.08,211.95");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=112.04,106.92");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=122.85,51.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=183.83,218.56");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=162.65,59.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=87.60,91.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=146.23,184.28");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=138.59,169.35");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=268.17,154.44");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=305.28,89.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=276.96,193.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=225.10,194.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=306.52,129.14");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=332.13,222.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=97.43,18.51");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=81.96,116.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=144.34,105.35");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=122.36,182.70");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=75.71,3.38");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=237.85,140.94");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=106.06,130.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=291.91,101.68");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=241.34,110.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=216.42,90.47");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=248.01,189.12");
    }

}

