
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_9
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
        @display("p=59.53,974.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=106.64,997.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=106.98,932.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,953.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=135.32,828.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=141.34,806.13");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=174.96,906.21");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=25.08,928.31");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=117.38,969.46");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=72.74,904.92");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=151.46,954.47");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=178.22,880.93");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=88.85,821.58");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=197.65,884.02");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=97.57,943.09");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=112.12,983.90");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=124.38,906.98");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=104.12,960.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=69.26,838.15");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=167.77,742.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=90.96,906.63");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=23.41,988.00");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=87.94,992.42");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=17.87,938.15");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=44.42,956.99");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=116.54,844.03");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=162.76,820.93");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=107.66,915.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=69.66,879.45");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=145.23,944.80");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=173.25,925.96");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=183.93,996.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=146.84,894.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=125.79,808.20");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=86.94,948.35");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=42.84,988.37");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=195.07,991.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=95.12,931.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=123.87,942.82");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=163.38,848.54");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=182.29,816.53");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=74.49,859.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=35.14,969.28");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=75.33,981.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=69.26,944.34");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=161.98,949.27");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=201.90,829.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=127.34,769.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=123.98,878.07");
    }

}

