
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_5
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=19.52,724.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=31.15,703.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=50.76,787.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=78.60,731.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=1.50,672.32");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=35.98,728.60");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=80.85,657.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=103.29,614.31");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=80.84,630.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=58.43,674.32");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=144.58,660.12");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=175.64,668.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=185.91,663.46");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=94.17,674.69");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=35.62,756.72");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=64.10,771.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=137.17,694.66");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=44.44,719.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=69.68,681.40");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=115.69,709.97");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=130.38,614.62");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=160.21,655.45");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=49.09,750.91");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=84.38,609.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=237.73,700.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=6.22,701.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=17.90,627.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=86.18,720.60");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=43.40,771.62");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=105.69,748.53");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=71.34,711.86");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=109.30,787.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=71.27,594.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=153.09,614.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=168.57,616.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,699.08");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=240.63,667.02");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=192.90,689.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=138.38,744.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=4.02,762.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=49.89,657.39");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=18.97,785.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=11.82,740.38");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=2.52,686.59");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=27.06,680.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=69.95,661.43");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=123.56,606.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=106.27,554.01");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=18.82,616.38");
    }

}

