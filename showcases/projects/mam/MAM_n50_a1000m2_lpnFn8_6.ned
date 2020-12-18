
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_6
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
        @display("p=198.32,882.67");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=162.16,935.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=140.89,853.83");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=128.25,836.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=156.14,895.56");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=204.28,933.01");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=142.46,875.18");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=212.33,870.97");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=148.23,943.45");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=180.08,854.09");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=107.33,837.40");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=203.10,966.76");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=195.88,907.59");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=113.89,882.80");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=207.46,899.16");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=178.72,894.83");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=88.75,862.40");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=107.20,827.09");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=115.26,925.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=154.04,962.90");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=151.33,906.47");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=159.22,851.12");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=192.12,937.70");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=156.00,810.72");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=96.43,808.83");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=105.43,952.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=256.76,982.40");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=47.26,976.53");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=163.38,867.52");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=249.24,968.88");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=216.23,912.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=181.19,804.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=225.85,955.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=248.57,862.08");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=81.26,882.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=233.40,918.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=242.65,913.52");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=235.27,855.69");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=98.10,768.71");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=147.72,971.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=174.65,979.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=61.51,826.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=205.51,789.23");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=83.52,986.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=50.74,854.35");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=151.37,767.72");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=213.11,969.98");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=213.81,950.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=137.34,942.77");
    }

}

