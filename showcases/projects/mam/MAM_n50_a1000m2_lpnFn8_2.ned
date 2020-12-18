
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_2
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
        @display("p=44.30,957.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=135.06,917.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=103.02,830.67");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=156.09,915.28");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=96.67,840.26");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=56.68,869.33");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=67.46,856.83");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=92.26,973.44");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=225.36,885.51");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=79.59,815.11");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=132.68,901.23");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=124.12,778.73");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=58.55,918.48");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=112.69,826.53");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=28.20,933.47");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=145.00,901.54");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=120.51,837.72");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=167.20,931.24");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=177.63,865.37");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=74.52,889.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=117.16,926.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=137.70,967.68");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=162.53,962.92");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=77.36,789.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=81.80,919.14");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=103.90,820.50");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=21.62,824.42");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=169.91,951.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=31.94,864.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=110.14,916.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=173.53,770.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=151.61,998.25");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=44.72,839.19");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=85.99,906.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=58.27,906.50");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=107.97,936.30");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=115.63,896.92");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=87.40,887.75");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=124.83,889.19");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=103.91,859.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=101.81,878.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=112.27,880.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=23.42,901.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=136.87,851.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=176.90,799.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=213.44,918.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=91.30,830.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=12.29,943.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=135.59,928.62");
    }

}

