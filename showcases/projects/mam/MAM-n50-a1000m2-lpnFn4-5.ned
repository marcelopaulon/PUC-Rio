
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-5
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
        @display("p=700.00,716.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=707.98,725.80");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=732.38,693.85");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=660.27,659.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=657.67,704.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=619.24,736.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=679.85,685.95");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=685.05,734.68");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=737.17,656.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=807.18,644.12");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=878.27,628.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=896.37,623.24");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=901.42,608.89");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=687.47,747.57");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=744.26,703.62");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=699.27,765.72");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=714.52,678.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=680.51,675.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=617.67,754.19");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=723.85,666.90");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=689.37,697.72");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=775.75,667.74");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=768.13,628.56");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=851.38,619.84");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=922.99,652.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=815.05,586.51");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=650.45,744.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=635.74,719.69");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=775.22,762.35");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=635.02,576.17");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=635.90,764.45");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=610.33,743.38");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=696.49,775.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=648.24,673.94");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=768.46,572.83");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=809.66,717.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=968.47,649.32");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=909.10,683.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=843.22,569.52");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=667.51,802.72");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=753.27,739.00");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=745.63,676.26");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=670.09,611.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=671.78,666.48");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=541.55,684.22");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=672.78,653.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=641.40,820.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=762.85,661.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=794.78,616.57");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=859.53,637.36");
    }

}

