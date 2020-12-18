
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_8
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
        @display("p=124.24,334.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=112.31,398.80");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=177.94,384.14");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=203.46,396.03");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=148.56,311.79");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=97.87,333.44");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=98.74,317.06");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=102.17,372.78");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=131.37,398.43");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=205.23,360.97");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=223.71,398.48");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=126.40,263.74");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=109.73,290.38");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=56.52,242.10");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=77.64,376.50");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=116.48,343.68");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=197.15,373.03");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=169.00,364.14");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=168.06,311.88");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=9.53,324.03");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=60.71,352.30");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=116.99,371.67");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=182.20,394.90");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=141.15,370.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=219.64,366.71");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=114.99,325.55");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=41.51,267.61");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=43.79,223.15");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=48.23,378.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=169.23,398.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=213.86,392.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=138.36,324.81");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=132.06,220.77");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=43.66,303.02");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=67.13,230.13");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=174.36,270.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=129.16,362.25");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=185.75,377.32");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=204.70,320.50");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=90.21,359.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=29.14,310.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=133.64,299.01");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=159.11,241.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=127.28,373.50");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=157.83,287.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=226.86,348.91");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=189.95,351.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=71.97,313.67");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=152.48,379.70");
    }

}

