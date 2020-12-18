
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_8
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
        @display("p=107.52,889.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=94.51,947.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=81.06,906.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=35.73,849.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=9.67,891.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=10.91,791.77");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=165.78,957.24");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=114.35,957.06");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=125.28,912.32");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=94.39,887.77");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=17.66,844.07");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=78.45,924.25");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=80.90,863.01");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=67.35,944.55");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=57.23,854.16");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=76.24,850.68");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=44.62,888.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=20.64,809.95");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=0.91,909.06");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=48.76,847.50");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=5.38,927.02");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=171.51,853.34");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=70.16,896.85");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=165.84,934.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=44.55,918.76");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=36.95,876.50");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=88.81,760.69");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=120.61,860.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=197.59,872.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=0.27,957.22");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=48.07,860.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=107.84,799.60");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=67.30,826.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=74.72,753.87");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=191.76,930.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=115.62,848.73");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=37.00,990.57");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=81.50,839.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=1.69,815.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=12.64,867.58");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=57.47,842.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=83.08,946.18");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=51.89,955.74");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=165.14,997.76");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=57.24,916.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=108.56,914.43");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=39.74,960.56");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=76.11,787.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=45.69,816.71");
    }

}

