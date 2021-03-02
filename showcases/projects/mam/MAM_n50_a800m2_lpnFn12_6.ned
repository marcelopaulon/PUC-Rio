
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_6
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=141.89,104.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=91.54,120.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=36.53,151.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=74.48,197.62");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=12.41,123.64");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=162.32,33.50");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=104.58,113.16");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=19.33,178.16");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=148.37,169.67");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=155.05,60.25");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=125.55,101.80");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=50.12,118.00");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=66.59,127.16");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=92.33,181.47");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=85.59,58.44");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=89.42,22.29");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=118.19,205.66");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=83.21,205.01");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=36.83,179.60");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=178.83,72.12");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=96.50,148.57");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=147.78,199.41");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=8.33,176.20");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=56.75,189.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=117.40,20.25");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=113.85,89.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=143.69,76.41");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=23.79,146.53");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=87.51,194.15");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=68.67,49.29");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=116.37,161.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=112.50,171.17");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=13.01,164.75");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=51.20,164.12");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=112.17,138.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=127.80,167.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=163.46,97.75");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=79.04,118.77");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=148.45,211.68");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=50.32,42.96");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=234.41,105.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=80.67,157.11");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=66.68,138.37");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=66.71,159.25");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=60.54,33.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=188.34,78.26");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=127.61,80.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=23.10,83.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=46.54,148.61");
    }

}

