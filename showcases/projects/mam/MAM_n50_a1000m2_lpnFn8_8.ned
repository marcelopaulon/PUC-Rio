
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_8
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=52.32,846.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=71.12,816.88");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=90.24,825.35");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=86.17,862.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=79.96,951.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=66.12,863.71");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=73.30,919.05");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=59.24,835.98");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=46.51,834.43");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=25.67,796.73");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=19.50,931.12");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=73.59,961.29");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=87.93,839.99");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=99.42,815.05");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=15.45,863.67");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=45.20,734.98");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=62.62,847.72");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=1.08,865.57");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=60.32,937.25");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=96.85,935.00");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=122.39,913.76");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=52.64,753.23");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=70.02,802.55");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=40.83,866.27");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,898.55");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=113.01,872.95");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=115.19,950.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=174.15,832.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=107.88,887.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=137.65,842.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=33.77,877.84");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=182.79,858.20");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=77.32,977.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=113.03,834.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=129.38,888.70");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=90.12,807.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=120.30,742.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=124.36,852.86");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=133.54,859.20");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=47.62,923.43");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=118.61,844.51");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=160.16,950.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=131.64,817.16");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=119.79,791.61");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=57.44,810.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=149.77,791.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=76.48,939.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=85.89,768.42");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=103.16,917.58");
    }

}

