
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_9
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=32.68,95.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=31.40,117.84");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=6.28,121.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=66.95,113.48");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=78.39,122.13");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=76.64,53.10");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=3.38,53.79");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=6.83,133.80");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=83.90,167.85");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=84.03,64.76");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=103.75,128.20");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=51.63,98.01");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=71.81,146.41");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=61.57,36.59");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=26.97,144.39");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=65.10,161.19");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=81.16,178.19");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=0.23,191.91");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=76.68,133.97");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=91.10,141.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=76.04,156.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=26.12,131.23");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=46.57,176.15");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=53.93,145.13");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=188.73,95.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=31.32,21.45");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=22.56,105.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=68.53,72.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=107.35,40.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=87.57,106.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=50.99,87.12");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=24.54,207.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=14.76,114.54");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=46.09,55.69");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=83.52,3.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=79.43,90.59");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=41.76,135.56");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=22.59,95.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=62.36,138.86");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=122.25,55.69");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=18.44,75.57");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=10.92,98.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=32.40,63.18");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=120.12,137.04");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=149.62,101.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=62.18,102.94");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=118.09,86.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=16.01,138.10");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=46.71,65.98");
    }

}

