
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_3
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=97.91,922.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=114.91,922.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=171.77,916.88");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=203.89,916.69");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=38.83,932.99");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=162.64,946.39");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=67.95,890.82");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=81.39,921.96");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=239.80,926.62");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=89.55,904.20");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=141.35,852.00");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=207.40,887.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=237.74,908.54");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=212.35,965.75");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=139.51,868.42");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=43.05,895.61");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=68.13,917.20");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=215.26,904.74");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=222.20,954.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=104.58,881.76");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=132.90,934.47");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=137.97,943.66");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=237.33,857.14");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=196.83,900.74");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=98.56,954.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=67.34,863.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=109.72,938.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=182.93,849.01");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=167.63,903.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=198.12,883.28");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=186.44,965.01");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=107.35,949.54");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=193.19,866.77");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=209.39,853.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=25.72,840.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=141.95,884.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=91.34,962.63");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=157.23,911.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=124.15,891.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=165.76,961.69");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=154.49,869.06");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=73.58,996.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=116.97,843.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=166.53,865.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=59.98,977.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=138.31,972.65");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=168.84,975.23");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=196.13,827.26");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=143.84,958.27");
    }

}

