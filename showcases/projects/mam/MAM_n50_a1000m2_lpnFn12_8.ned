
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_8
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
        @display("p=37.76,969.42");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=4.17,910.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=54.39,961.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=5.59,930.75");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=116.63,885.24");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=59.41,997.00");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=5.49,986.71");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=88.65,933.13");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=10.50,921.33");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=27.76,952.72");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=78.91,945.61");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=61.85,862.54");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=69.42,956.26");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=48.47,990.11");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=181.69,881.20");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=126.57,953.80");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=36.23,834.78");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=81.94,981.96");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=30.74,887.34");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=49.80,842.22");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=86.68,997.99");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=38.42,852.50");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=36.00,983.14");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=16.34,930.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=150.81,890.70");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=61.94,909.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=1.87,889.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=46.94,935.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=31.18,913.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=91.38,875.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=98.64,975.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=59.79,924.95");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=3.00,949.75");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=15.49,971.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=78.51,901.35");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=119.20,914.44");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=2.65,862.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=6.13,874.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=101.94,941.96");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=151.22,979.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=71.09,998.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=52.51,972.85");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=42.72,910.74");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=15.37,988.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=121.78,839.19");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=42.59,882.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=26.75,864.13");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=112.88,924.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=26.93,970.51");
    }

}

