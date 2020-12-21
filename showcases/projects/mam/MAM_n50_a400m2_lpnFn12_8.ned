
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_8
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=110.61,72.84");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=97.43,112.38");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=72.97,132.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=81.57,143.05");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=119.02,125.33");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=86.56,91.56");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=34.04,88.19");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=94.39,40.02");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=58.29,147.73");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=177.67,144.71");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=119.16,86.89");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=90.13,151.40");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=57.45,107.11");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=14.42,108.94");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=138.59,98.18");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=94.73,80.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=87.96,210.73");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=107.84,126.39");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=15.27,169.75");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=57.56,127.34");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=194.05,71.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=93.80,21.21");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=9.05,120.01");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=151.55,109.78");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=121.13,44.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=128.47,77.85");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=127.44,194.19");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=148.89,95.70");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=132.76,167.69");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=128.45,121.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=169.65,43.26");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=62.39,117.33");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=38.90,73.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=89.00,173.81");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=147.86,40.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=31.59,102.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=129.63,134.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=4.32,201.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=66.12,155.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=50.30,167.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=69.84,45.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=5.69,133.88");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=113.40,145.85");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=12.31,93.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=105.44,32.79");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=86.36,105.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=183.48,133.42");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=68.54,142.44");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=142.63,159.74");
    }

}

