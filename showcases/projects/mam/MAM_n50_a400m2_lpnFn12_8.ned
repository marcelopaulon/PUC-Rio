
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_8
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
        @display("p=104.11,240.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=117.70,232.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=116.83,173.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=165.47,178.42");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=89.25,279.97");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=85.05,267.81");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=68.76,264.06");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=106.39,184.27");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=93.86,195.89");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=106.13,205.82");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=69.90,251.62");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=78.67,182.44");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=166.41,164.70");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=158.37,224.06");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=38.44,244.11");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=84.03,229.57");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=128.55,184.80");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=116.51,213.95");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=155.96,146.97");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=29.85,251.51");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=39.94,269.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=82.06,201.02");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=50.85,183.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=149.15,218.82");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=86.19,257.61");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=29.56,273.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=172.50,303.79");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=79.72,240.23");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=239.29,192.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=11.07,304.76");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=29.06,201.96");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=89.95,209.21");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=142.11,133.98");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=196.88,193.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=122.27,300.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=97.73,252.13");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=105.44,308.75");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=182.18,206.05");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=208.79,164.56");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=31.28,235.66");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=155.86,259.53");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=98.01,266.27");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=123.43,149.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=177.14,176.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=132.21,394.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=129.96,242.94");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=128.12,258.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=182.67,189.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=236.77,161.49");
    }

}

