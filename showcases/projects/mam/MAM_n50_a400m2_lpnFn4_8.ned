
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_8
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
        @display("p=64.75,327.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=61.94,337.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=52.25,347.70");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=66.57,389.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=39.14,388.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=31.99,306.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=44.54,370.26");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=11.46,380.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=73.93,350.34");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=66.26,373.53");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=5.92,340.81");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=4.09,357.32");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=179.48,303.26");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=62.32,283.76");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=17.44,333.74");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=119.78,344.80");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=78.71,370.96");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=125.30,392.80");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=28.00,283.38");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=78.61,359.38");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=3.79,393.96");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=60.61,356.86");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=110.30,389.02");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=98.09,322.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=14.36,266.97");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=84.12,301.22");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=112.86,297.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=34.30,295.87");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=70.05,272.15");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=50.15,359.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=27.11,378.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=47.98,289.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=119.74,328.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=4.88,301.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=83.05,329.31");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=93.04,368.01");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=77.00,393.18");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=39.09,266.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=104.71,314.18");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=146.05,337.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=70.66,297.05");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=5.55,315.42");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=54.02,377.55");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=31.06,397.96");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=21.92,216.34");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=15.01,321.78");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=3.24,371.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=144.84,397.92");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=21.16,386.88");
    }

}

