
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_5
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
        @display("p=88.20,762.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=102.98,792.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=89.22,785.80");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=61.16,745.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=40.08,790.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=8.04,799.07");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=39.13,680.09");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=100.65,742.73");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=108.10,782.57");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=34.81,717.74");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=7.59,728.31");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=56.06,768.25");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=64.80,797.79");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=66.59,763.32");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=65.57,780.00");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=19.07,793.08");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=158.28,764.55");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=69.37,724.48");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=12.65,780.09");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=78.15,737.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=106.83,685.06");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=103.44,725.40");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=149.76,780.92");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=88.60,797.28");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=60.06,703.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=18.26,706.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=19.53,734.95");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=38.14,765.82");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=175.03,753.47");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=125.83,787.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=169.24,731.46");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=89.70,696.34");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=101.77,769.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=36.09,781.32");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=128.64,725.41");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=80.87,769.03");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=127.05,713.79");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=135.53,764.11");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=11.84,681.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=22.71,780.90");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=12.94,769.79");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=27.77,684.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=126.14,735.48");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=148.72,718.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=77.69,785.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=141.18,790.26");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=111.94,737.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=45.23,741.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=90.92,681.27");
    }

}

