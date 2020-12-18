
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_0
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
        @display("p=37.12,935.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=7.76,980.83");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=11.44,925.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=91.82,925.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=10.06,966.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=15.58,997.21");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=62.40,935.18");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=102.27,949.21");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=85.73,936.31");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=53.32,949.97");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=50.79,974.15");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=10.71,899.95");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=156.60,886.61");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=103.32,960.82");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=21.79,981.00");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=52.84,920.30");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=79.99,920.80");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=44.33,965.43");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=67.31,974.62");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=73.26,903.13");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=10.84,914.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=120.55,878.89");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=34.49,917.15");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=40.63,905.45");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=1.57,909.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=142.01,956.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=126.77,950.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=87.35,956.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=0.28,929.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=127.75,894.39");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=16.12,954.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=63.91,954.04");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=70.11,987.98");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=165.11,982.42");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=150.05,927.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=98.86,910.14");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=35.72,983.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=21.58,856.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=87.36,911.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=73.18,945.72");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=4.30,999.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=57.90,893.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=122.81,979.80");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=30.45,968.32");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=22.20,962.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=138.25,879.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=126.38,923.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=154.56,954.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=78.17,970.20");
    }

}

