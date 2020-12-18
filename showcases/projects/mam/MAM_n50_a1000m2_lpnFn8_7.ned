
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_7
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
        @display("p=151.47,79.61");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=159.69,49.34");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=224.83,80.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=197.30,68.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=170.81,86.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=234.92,29.78");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=124.99,20.63");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=129.79,169.44");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=70.38,77.99");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=200.26,80.84");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=168.89,111.92");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=154.98,158.34");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=273.02,31.10");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=20.71,85.39");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=154.30,24.84");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=181.87,54.70");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=298.68,15.44");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=117.77,64.53");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=138.47,112.10");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=241.32,39.32");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=77.53,191.64");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=205.21,23.99");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=204.14,41.72");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=166.35,39.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=138.78,64.02");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=192.32,125.22");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=221.57,113.67");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=151.62,121.18");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=147.36,91.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=130.79,104.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=242.04,146.25");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=250.46,24.41");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=175.49,132.73");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=216.50,31.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=93.27,82.68");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=205.72,92.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=201.56,53.79");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=206.18,145.31");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=223.31,99.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=234.56,69.68");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=223.07,19.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=111.47,93.32");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=105.31,129.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=86.36,9.04");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=195.59,9.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=189.66,86.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=199.79,173.81");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=273.12,85.24");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=114.01,44.35");
    }

}

