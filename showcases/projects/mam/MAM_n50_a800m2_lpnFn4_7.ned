
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_7
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=101.82,85.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=99.00,166.80");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=63.26,161.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=79.73,214.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=59.51,202.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=78.62,235.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=47.98,240.70");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=62.27,220.14");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=74.94,287.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=121.30,211.06");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=184.48,173.84");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=144.28,128.41");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=178.30,73.66");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=42.63,77.02");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=78.80,175.67");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=92.66,253.01");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=72.31,309.74");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=38.97,184.34");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=71.98,262.46");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=13.78,166.44");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=70.40,276.30");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=61.46,257.03");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=94.21,207.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=209.85,201.71");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=237.73,121.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=156.54,153.32");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=125.55,139.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=79.83,102.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=22.21,183.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=69.42,181.35");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=52.47,283.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=123.94,274.93");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=81.47,274.65");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=19.71,209.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=50.43,339.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=102.00,305.91");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=265.03,224.71");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=74.76,114.93");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=46.65,103.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=141.72,68.26");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=83.60,132.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=57.01,106.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=9.66,250.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=91.12,230.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=108.23,243.29");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=136.21,214.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=94.64,136.90");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=43.79,374.95");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=139.16,171.08");
    }

}

