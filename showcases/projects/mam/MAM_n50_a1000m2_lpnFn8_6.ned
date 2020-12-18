
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_6
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
        @display("p=140.20,101.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=185.09,119.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=172.74,64.80");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=201.64,52.81");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=220.59,105.41");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=282.87,133.99");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=181.79,109.46");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=165.53,47.47");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=206.89,191.84");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=235.69,117.97");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=120.40,84.73");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=167.41,102.27");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=257.92,204.75");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=95.85,63.70");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=129.74,97.86");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=242.58,132.45");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=183.50,76.52");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=201.17,42.67");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=281.58,182.01");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=272.05,140.40");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=155.76,58.00");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=141.07,179.39");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=154.81,42.44");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=200.30,118.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=198.64,103.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=220.30,70.12");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=289.61,69.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=50.42,94.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=228.43,56.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=199.40,178.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=142.03,144.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=182.57,37.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=228.40,177.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=331.36,168.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=111.04,69.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=149.91,98.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=253.28,95.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=122.05,45.10");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=266.86,124.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=276.16,52.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=292.65,128.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=41.72,32.32");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=122.63,168.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=143.86,75.16");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=203.94,73.89");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=165.19,33.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=248.18,189.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=327.08,57.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=101.39,45.28");
    }

}

