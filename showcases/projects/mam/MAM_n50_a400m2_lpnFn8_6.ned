
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_6
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
        @display("p=145.93,302.82");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=207.93,297.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=239.85,288.77");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=338.68,283.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=379.47,297.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=395.21,290.82");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=131.61,325.08");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,378.90");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=170.44,265.54");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=248.25,305.72");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=335.06,250.70");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=388.55,379.09");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=303.84,284.28");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=90.42,312.35");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=124.41,333.71");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=226.55,254.64");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=253.83,232.92");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=358.75,254.27");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=364.10,300.63");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=399.71,371.51");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=76.96,369.23");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=97.60,369.40");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=206.28,242.12");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=317.50,248.70");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=286.11,360.32");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=375.40,285.16");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=395.40,253.21");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=68.86,266.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=177.23,293.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=179.33,354.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=241.62,275.84");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=287.08,296.84");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=333.33,332.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=379.01,231.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=153.26,267.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=94.41,287.43");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=203.78,274.66");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=230.32,270.67");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=321.00,328.40");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=379.80,272.15");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=388.14,347.62");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=140.14,272.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=138.58,362.60");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=251.50,341.68");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=178.61,235.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=345.24,271.69");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=304.92,329.24");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=397.99,277.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=120.74,305.26");
    }

}

