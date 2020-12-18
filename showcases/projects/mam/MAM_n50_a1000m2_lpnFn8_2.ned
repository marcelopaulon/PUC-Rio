
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_2
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
        @display("p=109.61,893.35");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=80.00,983.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=114.38,916.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=108.93,957.54");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=42.25,922.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=14.94,956.87");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=180.76,867.53");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=164.95,895.62");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=63.48,994.47");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=213.08,930.77");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=162.46,928.52");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=69.72,887.98");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=37.02,949.63");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=148.27,897.14");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=50.15,867.54");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=83.59,965.39");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=145.60,837.84");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=130.52,931.93");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=43.45,993.40");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=1.74,948.20");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=56.67,824.62");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=123.53,811.43");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=167.21,978.46");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=188.48,924.76");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=142.24,999.27");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=89.17,942.75");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=67.59,951.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=177.28,960.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=53.06,884.24");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=64.35,939.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=45.97,971.89");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=145.75,906.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=107.89,881.59");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=56.18,952.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=76.05,911.46");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=104.65,820.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=146.27,959.02");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=132.37,990.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=177.67,932.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=92.67,855.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=89.86,915.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=52.17,938.00");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=135.84,885.84");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=158.16,997.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=110.81,927.29");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=165.25,968.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=44.32,898.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=13.24,969.69");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=109.53,840.37");
    }

}

