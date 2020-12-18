
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-9
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
        @display("p=636.00,658.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=591.01,648.47");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=622.93,721.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=650.11,653.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=677.36,613.03");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=754.36,674.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=804.29,654.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=826.54,606.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=825.44,580.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=838.34,553.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=884.04,538.87");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=869.53,554.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=877.43,561.84");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=593.31,735.62");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=575.86,736.29");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=588.73,709.38");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=690.18,597.85");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=704.90,616.36");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=737.16,760.93");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=793.95,587.85");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=828.71,569.57");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=868.89,624.94");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=896.25,552.07");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=959.03,501.28");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=933.96,528.71");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=886.31,593.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=577.35,652.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=622.71,677.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=618.76,663.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=697.53,693.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=675.77,594.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=805.09,697.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=828.86,637.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=788.35,530.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=844.60,628.27");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=865.34,545.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=887.30,528.62");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=772.25,540.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=901.29,601.86");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=649.55,585.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=517.64,660.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=634.40,815.27");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=642.89,678.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=642.75,599.37");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=825.82,682.81");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=736.21,611.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=841.75,574.60");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=842.06,676.06");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=890.18,486.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=898.58,454.77");
    }

}

