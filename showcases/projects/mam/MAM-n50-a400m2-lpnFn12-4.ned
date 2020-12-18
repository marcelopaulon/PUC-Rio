
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-4
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
        @display("p=124.00,161.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=202.05,193.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=172.50,154.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=107.75,188.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=79.03,216.21");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=203.31,211.94");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=141.76,237.97");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=157.85,143.23");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=111.48,101.32");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=56.96,197.84");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=59.84,237.25");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=170.63,264.53");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=208.52,158.28");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=95.56,194.62");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=76.58,235.24");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=108.64,154.81");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=207.49,235.58");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=132.56,112.51");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=94.44,184.53");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=91.44,163.08");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=95.14,135.65");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=227.22,199.50");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=170.85,201.41");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=116.19,179.44");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=73.66,244.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=142.70,188.61");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=192.63,128.19");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=211.47,92.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=44.28,128.19");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=132.08,240.84");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=50.15,179.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=186.83,266.38");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=148.91,157.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=143.95,131.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=126.23,273.08");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=122.82,146.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=278.27,156.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=228.71,187.47");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=30.99,208.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=27.31,224.55");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=179.31,179.48");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=252.99,204.79");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=223.75,135.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=191.59,203.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=27.54,292.06");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=105.79,223.97");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=111.18,214.74");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=177.36,167.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=150.44,112.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=74.36,189.19");
    }

}

