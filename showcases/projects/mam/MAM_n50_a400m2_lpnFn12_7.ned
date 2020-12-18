
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_7
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
        @display("p=169.28,233.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=173.56,164.65");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=142.39,221.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=84.12,299.26");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=58.48,313.60");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=175.62,147.39");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=140.83,188.35");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=83.98,214.14");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=67.72,224.88");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=146.25,367.99");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=181.70,287.80");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=195.08,165.96");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=199.03,151.20");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=132.26,375.46");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=110.94,322.52");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=189.62,242.84");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=241.58,226.38");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=125.01,211.36");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=121.58,223.21");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=84.80,318.62");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=176.82,264.78");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=256.98,159.69");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=85.32,149.23");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=146.43,287.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=162.04,260.54");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=163.02,244.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=180.21,179.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=106.33,287.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=125.49,359.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=131.98,283.56");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=125.83,305.13");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=135.19,82.77");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=216.69,228.09");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=95.98,282.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=178.51,352.48");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=156.80,167.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=169.01,181.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=229.27,226.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=43.26,316.83");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=33.81,284.96");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=179.59,220.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=84.46,165.40");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=172.67,293.31");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=155.57,356.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=68.82,236.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=239.60,242.73");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=185.12,195.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=152.20,186.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=79.17,262.57");
    }

}

