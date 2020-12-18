
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-9
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
        @display("p=250.00,36.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=182.46,51.26");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=171.58,32.52");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=168.51,108.08");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=192.81,99.46");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=257.31,102.52");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=214.11,82.66");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=152.83,54.19");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=186.77,85.06");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=193.78,115.03");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=283.01,70.24");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=158.18,98.04");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=240.62,84.31");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=136.09,60.47");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=213.62,53.37");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=199.89,61.02");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=196.23,50.82");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=218.10,30.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=204.17,168.78");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=239.63,169.23");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=331.33,73.43");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=169.84,132.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=181.27,96.44");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=160.77,184.07");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=180.34,186.80");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=237.80,26.25");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=247.06,127.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=191.34,37.27");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=165.71,80.78");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=231.98,123.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=269.91,33.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=169.61,70.66");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=215.94,101.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=235.43,65.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=184.59,109.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=337.86,35.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=235.10,54.38");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=137.14,86.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=164.22,23.53");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=170.31,7.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=302.40,117.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=111.66,103.64");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=84.82,26.71");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=117.47,111.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=183.78,159.17");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=203.05,87.97");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=164.32,41.23");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=103.84,52.70");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,200.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=208.48,133.42");
    }

}

