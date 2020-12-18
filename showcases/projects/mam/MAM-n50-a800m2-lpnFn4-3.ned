
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-3
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
        @display("p=502.00,581.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=513.23,573.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=506.99,562.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=511.41,551.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=479.67,548.54");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=441.06,565.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=458.16,614.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=404.26,687.80");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=392.82,732.49");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=396.85,743.79");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=388.65,783.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=426.20,734.55");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=361.10,749.14");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=516.44,647.58");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=540.59,499.05");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=448.82,620.74");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=471.19,499.36");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=502.05,642.99");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=386.78,635.67");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=490.91,618.84");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=383.45,743.51");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=449.61,729.91");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=339.28,724.41");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=403.16,704.26");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=401.94,651.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=375.22,785.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=486.73,482.90");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=538.16,634.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=500.74,537.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=583.49,516.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=485.84,521.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=345.93,576.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=528.85,617.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=418.49,676.19");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=347.04,711.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=411.21,732.35");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=427.15,774.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=376.72,728.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=275.35,755.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=531.27,592.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=528.86,514.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=542.79,618.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=545.67,582.13");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=455.68,542.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=377.88,618.67");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=509.24,625.66");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=358.25,682.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=315.33,737.56");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=409.87,751.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=464.22,760.33");
    }

}

