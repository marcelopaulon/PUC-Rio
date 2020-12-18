
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_6
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
        @display("p=111.13,355.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=186.56,333.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=166.35,276.81");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=263.62,290.60");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=124.76,261.68");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=167.24,370.92");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=152.62,334.30");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=171.11,243.43");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=269.53,262.56");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=44.97,352.91");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=29.93,381.93");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=201.29,286.13");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=206.81,192.37");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=277.97,330.11");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=139.48,323.32");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=118.09,378.10");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=144.32,298.06");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=96.69,272.17");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=225.37,289.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=30.81,295.66");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=116.22,391.10");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=243.51,276.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=150.63,252.25");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=220.10,268.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=49.27,276.90");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=182.09,371.29");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=217.37,376.90");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=237.51,217.83");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=256.82,260.32");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=43.56,370.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=58.92,379.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=125.11,317.57");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=154.80,313.43");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=240.29,363.16");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=41.26,260.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=172.87,343.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=196.23,312.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=176.83,265.91");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=247.09,339.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=40.44,245.31");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=130.22,377.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=163.54,329.75");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=259.69,272.61");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=265.53,357.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=89.41,342.77");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=184.72,351.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=202.23,354.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=83.31,282.01");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=335.68,282.54");
    }

}

