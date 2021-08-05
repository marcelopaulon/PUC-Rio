
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_9
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=140.87,77.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=82.43,143.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=81.19,236.85");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=113.34,251.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=150.71,160.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=169.08,172.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=161.40,184.70");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=195.72,270.18");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=182.25,272.67");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=234.91,286.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=279.69,272.88");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=201.08,228.44");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=91.89,148.13");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=88.40,43.54");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=153.66,192.97");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=61.76,191.91");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=151.96,235.11");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=77.10,178.62");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=205.36,178.87");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=138.42,152.92");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=174.07,242.07");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=199.82,258.63");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=296.63,214.20");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=232.94,264.76");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=118.00,217.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=122.83,59.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=155.33,65.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=137.16,167.54");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=98.34,238.39");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=82.55,282.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=237.16,203.44");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=116.11,186.23");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=180.43,195.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=221.27,279.89");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=174.99,229.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=218.61,290.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=257.34,192.00");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=137.89,183.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=98.07,130.52");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=203.41,95.17");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=81.30,120.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=29.52,244.99");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=58.66,203.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=125.84,176.16");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=198.62,214.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=245.32,161.51");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=210.28,268.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=107.52,301.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=208.23,374.03");
    }

}

