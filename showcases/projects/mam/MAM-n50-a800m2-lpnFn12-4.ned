
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-4
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
        @display("p=19.00,202.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=81.30,224.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=85.29,201.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=73.96,186.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=109.64,114.58");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=47.16,249.52");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=92.31,235.84");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=22.11,180.71");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=42.67,174.91");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=120.02,51.37");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=32.63,170.29");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=42.22,138.34");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=49.86,265.32");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=18.27,236.47");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=179.93,134.76");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=101.30,258.20");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=82.22,214.56");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=100.92,277.05");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=132.12,175.62");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=69.09,105.53");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=31.56,295.76");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=127.45,213.38");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=54.04,182.43");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=90.40,101.80");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=113.57,204.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=12.44,189.74");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=164.57,203.35");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=37.45,254.74");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=157.65,215.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=42.97,126.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=28.90,190.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=117.60,158.25");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=127.97,229.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=108.24,176.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=48.80,157.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=47.95,227.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=69.70,216.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=92.41,223.65");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=91.64,246.02");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=98.32,174.17");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=21.27,219.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=162.25,269.61");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=131.74,156.29");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=141.01,228.11");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=144.76,139.53");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=60.73,223.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=132.61,195.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=136.36,237.04");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=66.96,115.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=72.86,90.79");
    }

}

