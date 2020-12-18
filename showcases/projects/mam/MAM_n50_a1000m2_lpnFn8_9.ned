
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_9
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
        @display("p=118.75,954.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=107.09,980.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=83.21,973.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=25.84,953.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=108.71,911.88");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=52.56,900.36");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=69.86,959.24");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=188.07,980.71");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=97.80,951.20");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=157.42,976.36");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=121.77,925.95");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=119.31,996.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=89.62,929.64");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=89.99,895.15");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=84.34,883.90");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=44.72,990.72");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=131.86,922.14");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=77.51,896.16");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=176.09,858.57");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=94.67,853.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=103.87,883.62");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=133.74,962.72");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=121.29,965.59");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=56.24,914.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=56.07,974.93");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=78.80,954.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=31.82,890.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=118.15,884.15");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=142.79,917.48");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=136.34,994.21");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=166.12,969.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=57.60,891.33");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=144.21,935.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=110.45,870.78");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=146.35,960.88");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=101.32,920.00");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=49.75,926.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=154.61,912.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=25.38,974.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=150.16,950.82");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=107.97,968.30");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=82.17,998.29");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=35.10,962.04");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=26.44,934.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=137.90,984.24");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=16.96,998.69");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=129.84,908.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=39.76,857.93");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=48.55,832.26");
    }

}

