
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_1
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=111.60,83.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=83.43,84.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=122.59,3.80");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=188.10,70.67");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=55.78,95.96");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=145.26,41.25");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=1.41,100.22");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=122.12,28.01");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=157.56,16.34");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=131.51,167.86");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=187.22,32.06");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=124.12,57.40");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=103.17,0.66");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=200.17,11.25");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=120.51,181.66");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=21.90,63.21");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=109.08,55.89");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=201.87,32.88");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=125.04,45.20");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=146.38,65.92");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=111.05,70.23");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=8.71,36.82");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=91.40,1.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=142.40,0.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=144.36,29.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=24.87,80.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=142.36,111.43");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=215.76,19.72");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=198.87,57.56");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=152.58,131.61");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=122.64,69.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=107.01,136.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=159.46,1.54");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=185.69,97.38");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=74.79,91.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=90.19,143.46");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=66.55,157.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=69.38,34.73");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=129.17,88.72");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=119.11,107.01");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=154.73,112.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=99.12,74.38");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=161.63,70.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=241.65,83.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=96.50,162.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=95.81,88.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=81.70,68.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=166.91,31.48");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=205.31,129.27");
    }

}

