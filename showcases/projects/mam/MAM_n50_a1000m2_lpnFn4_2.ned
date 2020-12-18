
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_2
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=97.61,51.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=83.33,134.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=63.37,168.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=45.09,227.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=90.82,202.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=138.50,224.12");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=129.24,242.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=126.85,271.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=179.59,311.52");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=146.27,350.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=110.78,421.83");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=88.71,356.75");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=58.35,150.02");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=55.21,84.58");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=124.37,180.38");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=38.05,127.06");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=61.48,224.49");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=77.08,176.95");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=148.92,167.73");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=92.93,256.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=149.81,290.83");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=153.15,254.59");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=136.56,339.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=63.22,463.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=59.07,331.27");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=56.21,125.28");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=142.40,24.50");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=88.20,221.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=72.85,148.41");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=26.48,178.68");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=22.54,140.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=176.11,258.43");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=174.39,329.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=211.06,267.98");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=174.24,357.65");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=152.40,379.82");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=101.99,410.83");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=77.83,350.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=152.48,30.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=172.85,76.31");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=171.98,143.16");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=109.58,129.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=58.21,196.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=159.05,144.13");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=205.86,195.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=95.58,239.72");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=179.97,243.66");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=196.65,331.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=151.89,360.81");
    }

}

