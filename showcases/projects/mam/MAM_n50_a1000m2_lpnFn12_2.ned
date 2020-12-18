
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_2
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
        @display("p=63.73,962.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=153.73,983.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=131.86,979.81");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=171.92,976.65");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=121.61,974.72");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=70.19,993.00");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=128.25,963.24");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=119.66,925.27");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=161.09,997.43");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=93.55,884.67");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=46.64,888.62");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=165.35,915.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=114.41,889.07");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=232.43,908.11");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=150.46,823.00");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=46.60,957.80");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=126.89,894.48");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=94.63,974.62");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=258.73,936.39");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=74.78,918.24");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=131.75,948.27");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=95.36,953.01");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=183.19,968.31");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=176.24,998.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=68.11,929.40");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=51.36,982.69");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=223.15,979.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=100.09,939.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=181.00,923.49");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=49.01,934.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=39.10,920.91");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=167.49,886.83");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=91.54,908.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=242.91,984.86");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=157.04,831.17");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=100.81,875.85");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=175.38,895.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=158.75,969.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=203.88,995.52");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=65.88,822.41");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=74.76,960.79");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=120.47,991.29");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=142.50,903.49");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=166.18,930.24");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=141.65,854.73");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=21.61,943.43");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=107.11,908.49");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=110.95,944.59");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=188.17,958.39");
    }

}

