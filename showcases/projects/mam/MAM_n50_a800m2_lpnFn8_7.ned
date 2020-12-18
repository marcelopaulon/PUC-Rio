
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_7
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=115.48,76.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=85.00,165.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=72.87,198.65");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=91.81,196.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=93.00,230.43");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=123.70,275.81");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=31.17,53.52");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=128.73,89.36");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=135.89,164.24");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=51.84,155.60");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=8.54,155.18");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=138.09,246.36");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=184.56,350.66");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=139.25,109.71");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=89.12,47.64");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=147.62,160.83");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=102.24,217.16");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=54.72,129.83");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=83.90,248.88");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=146.18,280.08");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=101.11,61.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=42.78,33.73");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=176.87,164.67");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=148.17,148.85");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=115.99,167.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=59.97,277.81");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=130.97,299.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=89.21,68.08");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=114.27,138.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=156.97,220.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=11.86,192.23");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=141.20,200.91");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=18.48,216.37");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=206.71,252.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=73.49,107.54");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=111.26,58.88");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=98.29,120.58");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=96.30,206.74");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=101.51,276.17");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=48.71,224.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=126.25,256.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=108.78,129.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=33.10,42.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=26.90,230.07");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=49.97,107.06");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=76.28,224.15");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=112.64,324.90");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=157.76,251.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=61.62,170.91");
    }

}

