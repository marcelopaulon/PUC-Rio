
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-5
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
        @display("p=122.00,727.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=134.61,737.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=153.56,711.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=108.79,712.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=80.40,659.43");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=212.69,716.60");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=212.77,679.71");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=127.91,659.14");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=86.42,631.58");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=35.38,616.25");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=101.98,745.20");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=38.43,753.72");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=170.44,722.35");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=157.14,692.63");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=13.23,665.49");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=185.73,658.12");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=168.07,770.44");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=103.38,721.96");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=45.61,746.09");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=44.58,624.86");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=182.59,702.17");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=187.11,689.90");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=202.63,648.91");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=155.85,772.33");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=61.58,664.99");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=64.69,739.28");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=96.51,689.21");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=167.55,753.77");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=94.63,715.70");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=114.18,583.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=134.92,720.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=185.71,733.37");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=149.40,751.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=152.20,792.58");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=86.81,612.93");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=182.45,757.18");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=124.30,737.73");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=218.46,700.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=111.06,699.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=88.41,577.51");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=115.17,777.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=160.76,724.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=165.88,665.89");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=105.57,665.13");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=145.29,587.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=72.18,779.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=90.97,768.04");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=168.29,739.80");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=150.88,667.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=136.98,603.38");
    }

}

