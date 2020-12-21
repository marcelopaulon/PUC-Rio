
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_6
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
        @display("p=55.59,58.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=80.55,119.83");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=17.24,103.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=41.80,88.11");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=67.96,121.85");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=145.03,74.34");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=55.07,78.12");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=53.73,96.28");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=69.39,97.66");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=121.55,188.35");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=76.12,106.37");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=131.78,134.24");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=114.09,128.00");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=28.72,149.83");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=52.62,140.38");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=73.03,14.58");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=84.24,181.99");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=53.04,124.19");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=7.40,12.34");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=91.74,139.46");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=64.25,44.74");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=76.03,133.43");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=27.36,104.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=4.32,2.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=56.58,185.97");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=50.04,34.32");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=160.94,69.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=89.04,69.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=10.36,128.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=69.42,163.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=64.07,72.18");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=110.54,183.28");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=24.25,19.02");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=96.01,22.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=63.15,19.06");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=13.21,83.76");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=72.41,80.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=46.54,66.23");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=109.19,30.63");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=112.21,156.66");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=21.33,38.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=13.07,64.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=25.45,82.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=90.36,36.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=164.60,126.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=134.48,104.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=117.10,65.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=12.58,160.38");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=47.27,23.79");
    }

}

