
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_5
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
        @display("p=110.85,676.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=95.49,661.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=47.49,714.21");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=11.81,758.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=68.81,772.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=130.16,724.69");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=160.51,737.50");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=75.77,625.47");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=125.65,629.80");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=59.91,724.34");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=27.25,734.21");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=141.65,798.29");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=179.91,772.55");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=164.95,693.11");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=39.67,687.27");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=92.12,675.40");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=67.84,738.73");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=53.86,756.11");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=32.94,793.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=135.01,715.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=104.92,690.90");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=172.73,642.47");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=41.87,668.66");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=111.46,717.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=0.48,672.05");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=29.66,750.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=192.24,731.15");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=133.80,789.54");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=52.78,644.55");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=122.20,669.76");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=85.78,729.77");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=12.31,718.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=68.55,680.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=96.20,722.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=115.65,773.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=203.51,676.58");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=77.94,603.76");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=15.06,676.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=20.83,746.02");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=79.26,769.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=80.87,665.65");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=30.08,716.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=137.39,635.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=101.41,617.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=38.85,697.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=48.98,783.97");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=61.48,708.05");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=57.85,768.05");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=70.91,667.13");
    }

}

