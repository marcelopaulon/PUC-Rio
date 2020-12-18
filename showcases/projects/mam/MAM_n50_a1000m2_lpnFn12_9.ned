
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_9
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
        @display("p=89.94,864.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=21.88,933.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=9.28,954.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=49.66,905.76");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=130.59,897.58");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=100.75,843.85");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=35.62,852.04");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=61.02,950.18");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=62.62,897.59");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=87.86,895.93");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=102.86,863.03");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=103.38,888.09");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=73.12,916.83");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=2.64,911.05");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=97.19,947.07");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=5.68,859.03");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=34.43,933.06");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=0.68,964.13");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=48.64,951.94");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=95.41,933.62");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=73.11,854.03");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=23.82,959.32");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=48.02,881.61");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=80.56,952.05");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=28.64,873.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=174.71,824.66");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=110.81,962.37");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=73.56,989.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=54.28,919.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=114.48,900.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=173.06,840.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=29.57,968.47");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=46.25,931.86");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=119.85,914.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=128.52,919.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=30.13,827.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=77.75,902.94");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=15.68,943.15");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=70.45,837.66");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=140.28,880.52");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=184.42,867.11");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=38.10,960.94");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=25.31,993.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=125.91,851.82");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=80.27,931.76");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=49.85,844.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=18.86,903.36");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=12.33,982.17");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=24.35,884.22");
    }

}

