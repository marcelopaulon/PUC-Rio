
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_7
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
        @display("p=28.08,890.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=91.94,925.85");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=113.27,931.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=131.92,948.52");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=171.03,887.38");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=68.93,840.25");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=94.41,914.35");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=125.32,885.19");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=187.27,994.81");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=138.75,885.94");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=0.11,974.91");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=91.93,939.05");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=132.95,874.51");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=125.76,960.35");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=78.45,869.31");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=54.39,922.17");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=73.40,950.28");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=55.76,999.55");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=94.79,996.71");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=120.51,871.57");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=64.39,922.12");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=45.19,861.20");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=161.09,884.28");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=79.89,932.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=88.48,896.49");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=58.78,846.94");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=23.03,963.15");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=110.21,894.64");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=111.84,917.85");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=96.42,889.81");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=9.33,870.85");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=78.14,910.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=91.82,969.88");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=183.74,964.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=47.67,950.26");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=29.96,863.19");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=69.95,938.69");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=122.41,836.83");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=124.11,995.23");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=66.72,984.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=1.99,909.46");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=147.05,911.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=205.52,921.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=84.60,998.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=152.61,938.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=29.66,796.62");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=127.09,849.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=124.05,903.47");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=136.42,960.47");
    }

}

