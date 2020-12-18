
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-4
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
        @display("p=61.00,329.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=2.32,385.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=51.15,350.34");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=40.78,263.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=22.67,221.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=9.63,178.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=27.68,182.50");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=104.72,373.07");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=35.67,349.28");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=62.00,343.89");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=22.76,271.04");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=8.41,296.09");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=26.39,192.71");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=112.73,169.58");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=77.61,347.87");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=10.07,361.89");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=80.13,382.13");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=87.09,215.14");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=32.45,144.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=40.63,164.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=110.12,144.12");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=110.86,332.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=42.89,393.34");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=49.99,333.95");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=70.59,231.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=62.15,268.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=13.68,122.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=69.18,207.31");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=1.72,340.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=28.20,317.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=79.94,332.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=36.90,238.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=26.83,242.21");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=3.26,201.75");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=41.75,90.47");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=60.02,310.50");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=13.08,379.42");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=43.71,360.99");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=99.19,327.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=60.19,178.09");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=42.67,247.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=34.74,133.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=79.68,398.31");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=33.26,368.55");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=103.19,355.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=134.42,264.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=13.93,142.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=48.00,135.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=95.39,241.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=118.40,294.47");
    }

}

