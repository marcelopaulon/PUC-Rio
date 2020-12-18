
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-8
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
        @display("p=156.00,129.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=120.32,147.82");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=131.59,232.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=181.56,154.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=213.81,157.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=214.01,202.38");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=196.16,195.11");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=215.76,101.78");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=110.91,109.51");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=130.55,283.40");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=146.77,149.66");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=214.27,183.30");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=212.67,262.19");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=162.76,234.74");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=170.74,131.61");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=134.03,146.05");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=158.38,244.38");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=180.88,175.66");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=208.55,149.09");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=271.33,203.12");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=215.45,224.54");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=175.33,122.67");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=78.59,120.25");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=170.32,273.64");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=117.04,81.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=184.98,216.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=223.54,254.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=196.26,205.56");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=164.63,93.19");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=118.65,122.91");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=124.67,244.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=245.60,107.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=161.20,207.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=240.81,156.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=148.18,279.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=202.38,126.22");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=125.75,156.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=149.37,292.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=193.54,169.91");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=208.06,174.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=183.22,268.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=124.34,180.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=69.12,156.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=54.31,77.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=102.87,235.65");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=142.46,101.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=241.36,203.98");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=193.91,111.74");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=203.37,215.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=167.49,53.41");
    }

}

