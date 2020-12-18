
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_6
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
        @display("p=26.03,876.27");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=112.20,895.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=88.71,943.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=60.63,900.76");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=6.20,858.98");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=17.58,815.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=20.37,783.43");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=1.76,821.28");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=11.00,799.72");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=66.85,745.09");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=90.81,684.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=129.85,650.11");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=176.05,956.19");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=33.32,956.40");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=151.03,853.61");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=65.62,957.08");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=19.21,888.14");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=87.64,893.33");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=40.25,863.19");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=16.98,772.83");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=46.50,889.06");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=107.57,809.18");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=66.97,756.24");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=10.42,716.13");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=142.51,648.70");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=46.65,981.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=78.08,819.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=163.18,890.84");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=102.29,981.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=40.34,874.43");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=77.61,832.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=83.53,853.48");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=44.05,734.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=16.79,836.42");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=62.40,854.61");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=54.82,759.85");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=24.73,642.94");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=115.48,605.91");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=157.47,872.07");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=27.52,933.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=104.75,837.64");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=91.60,925.39");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=132.23,877.32");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=6.15,901.68");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=72.92,848.97");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=53.26,827.67");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=7.19,842.26");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=86.08,771.78");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=39.08,713.36");
    }

}

