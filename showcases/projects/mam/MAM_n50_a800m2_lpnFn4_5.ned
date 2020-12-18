
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_5
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
        @display("p=48.78,720.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=25.57,776.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=44.60,789.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=53.32,750.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=92.57,759.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=78.09,758.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=155.38,715.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=144.81,782.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=213.41,784.53");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=207.97,758.34");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=251.97,780.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=237.53,718.72");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=45.55,756.92");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=10.49,703.16");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=73.74,771.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=48.22,768.75");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=99.47,729.48");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=112.30,781.38");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=29.44,700.38");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=221.20,722.36");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=145.32,689.11");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=214.26,750.30");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=190.13,671.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=279.08,777.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=213.17,686.68");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=122.18,698.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=122.02,766.89");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=77.99,728.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=35.96,796.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=67.92,733.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=95.74,795.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=118.38,731.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=127.85,682.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=174.51,793.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=312.58,793.84");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=211.57,739.48");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=232.26,761.91");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=255.51,716.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=165.88,625.95");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=85.22,642.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=14.52,780.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=53.08,798.59");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=46.47,660.57");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=25.08,741.95");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=65.43,764.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=154.58,729.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=197.41,710.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=229.38,742.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=197.04,733.36");
    }

}

