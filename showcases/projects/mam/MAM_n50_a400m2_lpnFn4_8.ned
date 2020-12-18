
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
        @display("p=44.39,248.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=55.88,209.01");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=132.46,221.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=113.34,222.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,235.70");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=45.30,208.17");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=113.44,184.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=46.84,178.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=123.37,179.81");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=149.05,229.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=235.93,218.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=274.39,270.31");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=104.11,329.10");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=82.82,176.64");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=26.70,241.45");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=123.17,207.94");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=177.97,217.05");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=64.67,270.40");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=69.02,229.19");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=117.85,97.75");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=38.93,165.78");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=96.88,202.31");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=164.75,229.22");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=162.28,267.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=311.37,197.15");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=177.44,296.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=84.93,253.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=75.17,116.55");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=210.64,171.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=135.97,236.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=97.75,179.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=33.10,228.33");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=23.17,168.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=2.12,145.96");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=30.33,188.74");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=162.77,199.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=173.71,245.25");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=322.29,288.05");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=16.68,304.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=56.40,315.72");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=52.30,220.03");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=217.84,229.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=83.31,218.72");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=122.03,244.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=23.05,153.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=205.23,190.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=90.26,168.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=139.40,248.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=246.14,223.54");
    }

}

