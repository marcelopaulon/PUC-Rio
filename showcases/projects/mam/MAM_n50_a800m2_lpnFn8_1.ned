
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_1
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=94.96,777.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=70.60,737.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=124.15,703.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=157.75,728.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=197.22,753.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=271.91,691.92");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=137.14,750.11");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=69.25,764.48");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=92.53,731.40");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=97.27,711.45");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=173.59,630.18");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=183.72,760.54");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=281.97,613.83");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=80.68,765.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=66.98,753.40");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=111.14,688.84");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=146.88,672.66");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=125.90,726.72");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=281.13,785.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=251.10,610.53");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=142.45,642.99");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=82.64,795.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=13.16,775.44");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=77.99,785.05");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=225.40,731.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=243.23,721.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=247.51,691.59");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=53.14,736.49");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=98.99,746.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=82.52,690.28");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=111.38,778.18");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=163.12,750.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=152.48,717.80");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=232.57,700.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=113.90,653.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=78.39,749.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=41.40,738.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=121.65,741.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=178.60,730.71");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=242.13,796.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=204.58,672.69");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=48.54,758.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=61.51,788.06");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=73.09,717.30");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=176.21,676.76");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=149.28,699.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=193.27,738.27");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=257.41,744.47");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=180.93,706.78");
    }

}

