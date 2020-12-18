
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_2
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=124.07,113.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=64.48,87.70");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=94.97,61.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=4.83,100.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=53.92,133.32");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=104.43,119.38");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=75.46,134.41");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=102.63,72.88");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=124.02,127.69");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=66.87,65.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=93.10,82.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=87.91,146.47");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=117.96,18.43");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=184.99,129.61");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=26.72,26.61");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=83.99,155.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=20.11,143.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=18.09,46.45");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=133.67,99.50");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=30.00,113.80");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=57.95,116.25");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=133.35,131.86");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=34.72,10.00");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=88.82,100.62");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=44.38,196.09");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=112.42,52.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=136.33,121.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=98.95,34.47");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=117.52,85.49");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=2.16,1.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=6.68,52.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=178.53,169.00");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=120.61,101.78");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=35.88,136.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=74.52,80.62");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=156.86,62.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=98.48,168.31");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=44.71,87.13");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=70.56,185.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=129.86,147.58");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=50.44,182.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=93.46,118.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=3.00,112.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=141.02,178.11");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=159.36,201.06");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=41.59,124.39");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=131.18,52.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=48.45,147.40");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=75.22,57.66");
    }

}

