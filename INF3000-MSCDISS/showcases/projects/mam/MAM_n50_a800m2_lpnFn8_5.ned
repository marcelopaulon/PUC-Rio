
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_5
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
        @display("p=173.85,167.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=186.78,156.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=179.62,222.91");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=262.41,275.96");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=237.62,348.88");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=180.02,293.17");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=74.29,119.16");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=218.72,242.50");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=153.74,236.73");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=184.96,206.96");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=237.35,311.04");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=255.60,351.76");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=203.64,339.66");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,129.42");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=108.09,139.03");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=173.27,199.43");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=194.20,234.68");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=211.57,310.45");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=250.02,428.36");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=234.46,242.01");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=148.98,106.32");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=178.54,257.35");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=257.02,93.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=129.03,150.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=287.09,248.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=190.29,340.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=142.20,239.22");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=124.25,100.42");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=154.36,180.15");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=169.94,155.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=128.66,223.61");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=215.39,190.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=283.78,428.10");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=93.15,284.58");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=166.76,133.88");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=173.67,146.03");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=200.64,242.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=169.47,222.72");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=180.74,245.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=281.90,286.33");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=176.72,279.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=24.66,143.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=210.66,215.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=207.92,140.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=205.46,180.54");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=222.00,222.87");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=197.62,326.06");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=141.94,317.80");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=37.20,69.35");
    }

}

