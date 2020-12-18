
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-6
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
        @display("p=908.00,971.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=878.34,909.02");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=826.28,911.15");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=821.28,852.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=788.40,808.49");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=972.43,916.35");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=868.58,950.94");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=839.48,900.89");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=753.95,877.70");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=858.00,780.57");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=906.17,982.51");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=924.28,875.13");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=842.75,916.70");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=850.37,926.30");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=758.48,828.00");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=919.84,992.72");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=900.96,867.23");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=788.93,836.78");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=817.63,863.83");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=796.40,713.98");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=918.47,917.95");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=956.77,898.55");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=776.29,845.86");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=826.82,811.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=808.33,807.69");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=884.03,989.59");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=861.47,921.44");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=780.95,935.43");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=871.29,824.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=785.58,797.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=911.84,953.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=905.40,843.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=868.51,854.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=866.25,890.33");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=759.03,807.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=888.20,963.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=863.87,968.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=790.60,871.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=780.73,883.05");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=829.77,884.68");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=933.67,929.37");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=910.18,930.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=820.32,896.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=799.35,816.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=720.44,789.51");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=901.61,894.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=831.64,944.87");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=836.89,827.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=807.57,881.62");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=786.38,826.32");
    }

}

