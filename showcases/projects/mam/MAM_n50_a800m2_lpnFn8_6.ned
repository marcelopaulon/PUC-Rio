
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_6
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=82.88,675.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=144.57,732.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=164.01,681.81");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=122.94,716.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=128.23,689.98");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=38.64,670.58");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=103.37,673.10");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=99.31,687.03");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=145.47,786.43");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=73.57,713.21");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=105.80,628.34");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=188.13,659.00");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=115.58,710.02");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=13.77,740.50");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=83.67,638.52");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=139.60,691.35");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=203.71,666.56");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=142.24,660.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=182.05,624.55");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=47.54,683.72");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=138.81,722.27");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=182.24,671.17");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=119.77,763.15");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=173.60,663.87");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=112.62,724.27");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=64.55,635.56");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=121.78,630.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=118.30,647.61");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=110.16,696.20");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=125.25,785.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=226.60,692.64");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=142.01,640.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=144.55,677.75");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=59.62,579.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=116.13,662.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=106.04,652.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=120.26,794.83");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=161.94,666.15");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=156.88,749.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=131.00,678.88");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=31.08,657.02");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=45.92,725.13");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=70.98,674.25");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=237.99,720.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=168.12,595.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=130.17,661.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=190.32,679.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=31.58,705.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=10.70,673.72");
    }

}

