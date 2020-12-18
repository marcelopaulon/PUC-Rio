
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-0
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
        @display("p=296.00,318.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=274.55,291.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=225.41,363.27");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=253.32,350.70");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=234.66,347.96");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=274.75,336.91");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=304.47,364.05");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=273.93,368.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=232.75,385.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=209.60,363.13");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=120.77,343.02");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=122.57,321.83");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=169.60,269.42");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=245.80,335.32");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=285.08,266.27");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=164.38,304.43");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=257.48,317.69");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=242.59,295.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=230.11,270.79");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=211.91,351.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=269.47,326.78");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=149.50,360.85");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=154.98,375.53");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,272.40");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=112.96,313.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=215.63,221.78");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=307.64,245.62");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=270.67,302.41");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=184.00,387.67");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=223.59,316.55");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=181.10,277.91");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=223.59,335.04");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=319.54,299.08");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=267.76,385.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=254.04,375.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=288.02,396.33");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=108.91,372.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=43.98,307.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=88.89,243.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=279.44,234.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=261.15,283.73");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=191.67,345.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=251.56,272.67");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=186.91,323.55");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=328.66,288.54");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=296.64,387.68");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=328.13,311.45");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=207.74,387.32");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=158.10,338.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=91.69,357.46");
    }

}

