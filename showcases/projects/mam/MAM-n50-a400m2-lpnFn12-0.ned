
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-0
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
        @display("p=314.00,284.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=270.21,283.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=208.34,300.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=157.42,370.77");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=100.67,381.43");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=332.29,308.72");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=263.76,251.34");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=129.58,332.73");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=143.16,291.36");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=65.42,338.61");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=306.14,376.25");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=284.12,282.72");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=200.10,311.30");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=146.50,355.40");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=89.50,381.87");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=351.09,275.91");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=261.20,297.12");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=221.88,352.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=93.07,305.66");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=76.03,384.41");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=224.92,306.42");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=221.72,265.44");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=303.44,301.88");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=146.57,399.81");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=134.07,373.78");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=310.83,322.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=259.65,237.97");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=194.49,247.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=174.39,365.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=148.92,379.55");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=272.54,337.35");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=364.77,275.95");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=190.06,301.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=165.22,350.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=84.54,342.78");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=330.71,248.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=289.24,296.51");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=189.33,342.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=140.47,325.69");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=86.49,354.85");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=314.64,199.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=207.36,240.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=197.60,358.69");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=71.51,371.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=108.26,343.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=301.69,212.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=293.35,225.55");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=233.89,379.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=151.25,331.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=126.15,344.67");
    }

}

