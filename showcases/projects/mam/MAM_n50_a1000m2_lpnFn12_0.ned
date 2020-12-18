
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_0
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
        @display("p=122.63,915.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=84.05,983.80");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=152.94,936.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=144.36,910.55");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=84.80,880.09");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=121.86,897.15");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=42.52,965.26");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=93.62,943.93");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=209.53,906.49");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=64.71,939.60");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=192.69,868.02");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=47.23,942.48");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=192.20,938.73");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=226.15,870.38");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=169.43,862.47");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=165.60,921.21");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=178.92,953.62");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=177.20,900.57");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=123.67,881.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=51.17,858.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=124.94,932.26");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=53.15,999.20");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=184.32,970.89");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=121.49,942.98");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=144.77,859.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=77.52,949.30");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=75.30,993.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=179.88,988.02");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=157.42,912.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=148.19,971.93");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=63.57,972.92");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=12.92,970.37");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=72.09,959.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=95.43,890.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=7.67,928.10");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=147.98,833.37");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=106.32,914.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=112.93,927.97");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=214.19,951.10");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=64.11,914.62");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=88.74,918.74");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=106.24,957.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,883.44");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=148.43,895.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=29.25,956.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=192.59,917.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=57.90,951.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=152.71,953.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=62.71,904.59");
    }

}

