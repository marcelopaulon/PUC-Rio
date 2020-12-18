
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_2
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
        @display("p=124.33,934.42");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=112.12,901.15");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=90.93,878.21");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=129.79,827.83");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=7.40,879.16");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=33.74,899.86");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=123.71,885.59");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=158.16,919.30");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=130.86,756.75");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=104.90,910.62");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=165.34,958.61");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=146.22,903.70");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=77.09,881.47");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=151.70,856.85");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=25.49,926.77");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=112.78,943.29");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=126.00,915.48");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=99.06,885.22");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=46.40,872.43");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=76.30,929.45");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=86.53,953.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=86.26,909.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=55.41,892.46");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=166.61,841.05");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=112.37,888.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=105.24,933.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=173.23,920.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=106.36,806.32");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=74.40,792.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=171.38,931.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=120.53,949.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=83.55,895.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=118.50,783.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=34.51,830.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=108.70,867.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=118.87,970.05");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=113.63,979.74");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=71.66,973.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=138.25,805.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=12.72,865.70");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=34.91,956.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=123.77,995.15");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=124.41,846.49");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=136.50,878.87");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=84.36,940.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=194.88,930.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=66.12,925.02");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=140.98,856.75");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=105.46,772.26");
    }

}

