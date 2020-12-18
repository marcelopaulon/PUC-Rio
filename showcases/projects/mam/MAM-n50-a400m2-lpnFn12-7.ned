
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-7
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
        @display("p=177.00,283.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=210.03,272.15");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=228.42,296.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=165.45,323.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=141.89,392.96");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=246.54,326.95");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=135.55,306.97");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=262.09,216.38");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=151.02,255.67");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=152.10,309.00");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=120.56,231.74");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=242.36,225.25");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=283.54,356.96");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=164.41,377.61");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=129.33,357.49");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=177.30,244.71");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=208.48,198.35");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=293.52,359.98");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=163.28,356.77");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=106.41,337.62");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=188.54,297.79");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=140.64,295.18");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=162.87,247.05");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=242.11,362.80");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=108.69,363.11");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=268.85,304.74");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=234.51,252.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=229.34,347.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=183.63,315.76");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=123.44,370.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=206.08,286.64");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=162.90,292.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=176.32,225.34");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=187.88,330.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=164.09,387.75");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=179.44,256.63");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=240.42,271.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=210.94,305.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=178.25,348.15");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=140.05,370.85");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=152.73,273.47");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=194.92,248.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=246.23,203.32");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=229.88,330.79");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=147.48,362.07");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=143.55,246.48");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=191.10,275.91");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=175.63,322.35");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=163.89,341.10");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=140.34,337.79");
    }

}

