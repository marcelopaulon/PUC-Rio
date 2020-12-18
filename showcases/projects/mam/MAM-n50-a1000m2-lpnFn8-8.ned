
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-8
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
        @display("p=0.00,414.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=33.32,431.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=19.63,461.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=17.80,474.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=29.99,503.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=24.76,442.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=85.88,476.24");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=2.37,347.16");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=90.60,437.87");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=26.52,408.26");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=70.38,475.17");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=34.41,530.02");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=34.47,389.75");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=99.76,472.15");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=15.89,411.56");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=0.66,456.89");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=2.81,470.22");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=63.40,434.26");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=24.73,588.56");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=38.70,445.67");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=37.35,468.74");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=54.98,473.31");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=45.43,434.85");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=66.65,541.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=14.05,441.74");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=12.72,586.08");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=72.04,407.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=132.74,527.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=53.95,350.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=36.65,406.46");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=23.74,540.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=105.33,490.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=107.56,461.42");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=84.93,405.19");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=55.08,452.14");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=20.93,333.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=51.04,508.60");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=104.18,505.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=95.05,524.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=0.94,485.61");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=41.77,376.70");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=1.41,442.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=75.68,376.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=21.85,378.26");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=24.15,529.81");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=56.11,404.92");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=40.55,510.44");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=56.18,364.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=124.23,434.51");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=4.95,362.54");
    }

}

