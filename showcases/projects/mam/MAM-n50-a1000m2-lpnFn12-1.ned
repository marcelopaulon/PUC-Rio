
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-1
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
        @display("p=186.00,645.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=183.34,682.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=249.21,682.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=294.27,674.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=200.96,650.44");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=258.51,586.48");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=195.50,724.10");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=281.08,627.39");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=308.62,672.29");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=189.31,674.47");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=112.47,582.45");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=165.01,637.70");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=282.88,694.54");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=281.01,707.18");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=210.50,690.80");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=170.30,649.98");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=112.67,624.04");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=253.89,623.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=319.88,640.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=207.70,603.32");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=178.15,590.04");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=259.53,692.92");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=260.34,671.48");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=325.31,748.24");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=268.48,639.25");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=184.47,713.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=124.44,753.83");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=269.99,654.27");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=218.42,726.00");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=169.78,622.24");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=212.59,677.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=159.90,729.19");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=281.74,602.43");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=325.94,737.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=196.61,627.20");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=184.48,571.02");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=166.79,666.73");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=270.37,705.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=337.50,639.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=194.94,585.29");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=148.61,645.43");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=192.34,696.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=270.92,721.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=364.43,665.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=186.63,655.59");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=170.39,680.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=151.41,703.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=247.92,650.05");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=335.82,746.62");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=119.76,612.98");
    }

}

