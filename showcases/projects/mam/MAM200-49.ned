
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM200-49
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
        @display("p=249.00,89.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=188.22,109.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=250.60,102.18");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=276.35,108.39");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=299.09,88.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=316.30,66.02");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=322.87,46.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=398.76,12.59");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=361.74,16.55");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=301.05,69.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=286.74,53.25");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=334.33,115.76");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=296.42,26.64");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=281.45,125.10");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=130.85,133.73");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=305.78,60.43");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=279.30,188.97");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=277.37,49.39");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=245.13,37.56");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=364.16,51.52");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=393.87,25.01");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=376.06,11.36");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=326.92,61.71");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=275.63,35.68");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=348.24,193.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=289.71,73.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=198.26,154.88");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=261.08,105.19");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=270.05,91.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=317.23,175.17");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=383.66,57.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=328.79,16.52");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=394.10,42.84");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=365.63,38.29");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=335.62,95.13");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=268.40,58.11");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=368.91,129.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=337.54,33.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=266.21,77.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=237.55,82.35");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=182.56,36.80");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=257.96,194.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=310.63,102.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=310.23,85.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=300.01,50.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=340.88,56.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=308.24,43.98");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=270.24,138.19");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=262.12,117.25");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=378.31,147.94");
    }

}

