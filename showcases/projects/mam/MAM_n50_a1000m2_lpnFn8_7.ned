
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_7
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
        @display("p=93.35,931.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=82.79,935.52");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=24.97,955.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=31.42,978.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=11.25,937.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=46.34,885.36");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=109.04,857.35");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=144.09,887.20");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=111.95,951.13");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=103.40,971.65");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=118.97,969.39");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=46.01,868.93");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=107.58,874.35");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=17.04,912.75");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=172.65,975.32");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=153.71,941.82");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=2.12,969.65");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=67.66,891.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=26.97,879.61");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=81.17,856.36");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=106.45,931.33");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=90.92,945.09");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=62.69,902.77");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=35.09,910.31");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=0.32,924.75");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=47.43,938.41");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=7.10,864.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=123.52,806.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=100.95,944.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=86.49,885.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=13.30,972.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=56.06,948.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=10.91,891.22");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=23.24,891.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=178.91,888.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=169.94,882.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=46.25,925.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=69.67,925.72");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=62.06,988.83");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=88.66,908.28");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=47.54,847.64");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=80.36,897.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=125.82,950.60");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=37.02,961.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=120.83,981.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=22.23,965.34");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=7.97,997.29");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=90.07,823.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=119.47,835.31");
    }

}

