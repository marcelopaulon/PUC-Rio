
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-5
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
        @display("p=0.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=41.83,109.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=58.16,149.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=124.34,156.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=49.88,120.18");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=38.84,67.30");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=70.76,89.00");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=50.22,173.14");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=99.51,137.32");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=8.38,93.89");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=75.48,50.63");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=29.24,108.42");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=0.73,208.28");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=92.98,100.21");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=15.67,101.47");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=5.71,115.96");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=88.61,64.72");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=76.21,242.89");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=121.52,224.89");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=79.78,84.32");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=28.90,91.40");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=31.15,123.50");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=68.16,163.09");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=106.34,205.91");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=51.98,136.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=5.85,175.22");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=77.45,130.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=38.39,143.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=144.09,207.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=63.35,119.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=19.65,70.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=22.18,171.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=83.65,220.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=124.80,140.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=43.17,128.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=80.89,98.68");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=100.25,112.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=87.82,156.96");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=146.29,149.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=119.82,178.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=47.57,20.42");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=58.16,67.80");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=109.22,146.90");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=119.29,122.70");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=43.10,44.12");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=57.31,57.62");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=94.80,126.76");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=137.40,156.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=130.19,111.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=52.26,214.34");
    }

}

