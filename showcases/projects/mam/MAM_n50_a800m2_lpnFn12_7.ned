
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_7
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
        @display("p=105.04,637.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=126.39,653.36");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=65.43,597.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=3.33,574.51");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=108.85,733.79");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=69.14,660.18");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=129.11,639.69");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=47.03,594.99");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=56.69,578.09");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=52.74,638.27");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=119.39,643.33");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=131.05,693.56");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=96.87,630.60");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=4.39,548.29");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=113.17,787.27");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=81.00,633.77");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=59.30,722.48");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=46.50,544.09");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=65.05,501.90");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=118.56,683.54");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=138.13,632.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=160.61,660.47");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=76.73,612.95");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=0.17,641.91");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=58.61,686.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=130.44,671.09");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=107.80,676.09");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=96.63,570.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=12.34,562.90");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=97.23,747.55");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=67.89,710.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=124.90,721.57");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=67.85,560.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=24.55,520.85");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=19.42,656.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=66.10,677.92");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=83.43,647.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=73.42,510.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=38.84,515.96");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=86.61,770.22");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=35.24,584.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=191.72,606.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=105.44,653.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=23.52,554.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=76.80,750.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=34.64,649.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=153.92,626.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=53.46,554.04");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=0.28,627.35");
    }

}

