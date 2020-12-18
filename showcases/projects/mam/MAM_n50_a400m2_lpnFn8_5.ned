
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
        @display("p=83.00,273.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=72.30,256.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=51.66,212.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=67.02,236.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=65.38,225.70");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=112.63,210.97");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=115.08,306.47");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=101.54,231.04");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=70.74,277.32");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=14.57,146.16");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=149.02,188.64");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=9.97,187.99");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=96.91,196.26");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=156.87,288.83");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=105.33,266.79");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=149.51,271.19");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=52.64,232.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=83.03,198.50");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=17.68,164.06");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=105.04,243.49");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=147.02,237.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=28.15,260.06");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=165.94,237.44");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=5.78,265.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=27.54,166.61");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=82.75,154.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=19.10,198.32");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=121.66,260.56");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=70.02,291.85");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=66.57,321.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=41.50,206.52");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=8.29,204.42");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=1.67,213.81");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=142.97,145.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=56.10,259.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=95.90,337.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=145.92,296.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=28.12,226.10");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=72.45,171.70");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=112.15,139.58");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=81.12,214.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=167.31,305.18");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=149.67,257.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=21.73,310.17");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=42.96,191.06");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=10.53,175.33");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=97.73,158.49");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=85.24,296.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=102.08,281.13");
    }

}

