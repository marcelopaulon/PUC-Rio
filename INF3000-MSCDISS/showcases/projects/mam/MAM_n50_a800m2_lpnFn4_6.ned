
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=172.69,66.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=197.29,106.38");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=216.26,180.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=176.31,227.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=261.00,237.31");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=197.86,215.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=191.86,231.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=205.09,203.40");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=245.52,140.00");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=225.12,100.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=137.52,69.19");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=52.69,106.73");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=85.66,27.09");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=179.80,55.92");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=161.64,71.68");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=209.20,190.63");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=197.29,196.12");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=281.88,304.58");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=275.73,177.59");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=189.64,221.57");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=155.37,239.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=265.44,109.83");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=259.99,17.56");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=199.82,24.80");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=82.68,92.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=146.60,54.72");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=133.83,132.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=203.63,86.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=258.21,160.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=176.09,270.47");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=181.96,280.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=164.96,306.61");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=238.15,273.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=228.83,112.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=241.41,177.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=277.41,120.43");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=110.80,41.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=5.83,59.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=55.17,86.51");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=246.67,113.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=179.96,100.74");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=305.90,185.29");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=192.57,245.23");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=335.30,282.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=131.49,205.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=255.22,267.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=182.07,259.63");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=291.26,155.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=257.43,145.76");
    }

}

