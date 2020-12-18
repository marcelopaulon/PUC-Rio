
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_3
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
        @display("p=141.74,780.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=154.01,744.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=108.76,773.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=144.77,793.60");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=89.69,751.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=108.34,761.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=80.73,723.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=70.26,679.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=128.87,714.79");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=224.78,709.97");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=209.95,729.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=127.60,745.38");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=61.04,768.05");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=173.50,792.26");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=202.77,710.89");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=24.13,767.17");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=131.29,703.42");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=70.73,744.98");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=48.87,737.23");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=82.97,656.95");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=107.92,679.07");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=134.53,725.91");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=268.69,781.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=206.70,641.64");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=119.64,657.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=52.82,679.12");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=99.77,742.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=185.00,723.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=118.14,793.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=169.09,739.21");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=87.52,687.32");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=21.66,748.07");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=125.93,646.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=63.85,652.49");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=57.03,727.31");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=232.27,745.98");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=190.82,785.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=176.77,706.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=154.47,699.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=121.45,777.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=138.68,749.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=193.68,734.44");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=127.52,787.26");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=28.28,719.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=32.19,786.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=15.67,662.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=65.67,694.69");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=135.36,660.26");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=258.27,682.25");
    }

}

