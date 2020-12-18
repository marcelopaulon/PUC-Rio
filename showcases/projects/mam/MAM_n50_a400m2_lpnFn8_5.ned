
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_5
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=130.48,298.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=117.21,292.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=119.79,326.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=133.39,327.67");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=170.63,330.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=153.09,358.91");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=89.24,288.34");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=104.09,342.57");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=188.10,293.24");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=123.88,347.70");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=203.96,259.55");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=186.73,349.13");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=241.37,360.43");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=101.56,289.42");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=141.28,236.71");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=156.30,284.36");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=108.99,317.97");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=212.02,328.96");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=140.95,273.26");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=124.01,385.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=53.60,312.17");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=141.34,297.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=194.89,317.19");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=105.06,370.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=135.79,311.24");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=173.59,308.52");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=91.34,353.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=77.37,286.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=56.60,260.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=99.97,324.07");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=138.63,354.64");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=99.81,258.75");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=100.75,386.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=150.62,344.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=122.69,269.13");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=84.88,325.36");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=125.68,285.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=160.22,324.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=228.99,302.56");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=162.58,296.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=154.48,268.02");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=148.97,315.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=170.47,251.61");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=71.44,333.32");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=165.76,373.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=98.92,310.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=173.82,346.10");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=145.25,387.83");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=85.59,389.68");
    }

}

