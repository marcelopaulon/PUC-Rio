
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_3
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
        @display("p=138.11,291.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=189.76,308.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=123.14,266.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=81.54,294.61");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=96.50,343.22");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=160.02,363.93");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=150.04,318.27");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=44.91,308.10");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=71.71,242.99");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=146.27,328.63");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=120.83,290.78");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=182.63,343.78");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=100.27,318.10");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=128.02,336.49");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=149.73,266.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=136.13,274.18");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=177.77,320.84");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=59.92,299.16");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=173.74,262.31");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=117.25,315.05");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=209.75,358.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=186.91,296.55");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=78.71,312.36");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,315.74");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=100.18,375.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=77.52,332.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=139.83,305.65");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=166.78,279.56");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=90.29,255.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=103.11,280.00");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=119.38,246.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=139.23,374.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=133.13,243.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=116.41,343.58");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=70.54,369.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=177.51,276.13");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=202.70,365.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=68.97,325.83");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=97.39,222.49");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=160.04,222.31");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=160.80,303.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=233.16,386.27");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=134.34,196.15");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=129.86,224.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=65.77,234.51");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=203.12,283.92");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=283.24,301.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=111.11,220.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=64.95,280.93");
    }

}

