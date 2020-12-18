
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_0
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
        @display("p=159.69,100.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=212.68,149.13");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=164.97,164.34");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=237.21,97.03");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=35.11,88.37");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=135.63,106.72");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=220.93,224.61");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=174.57,169.14");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=227.36,91.48");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=57.80,169.53");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=137.05,69.81");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=271.97,96.88");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=130.94,97.30");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=235.96,84.76");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=112.40,60.68");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=141.40,96.86");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=241.81,142.38");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=189.74,170.56");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=238.84,152.02");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=51.06,149.81");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=202.78,71.22");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=159.31,67.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=191.78,245.01");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=223.95,132.95");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=98.95,71.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=191.36,91.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=125.70,150.95");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=238.25,200.61");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=304.79,148.96");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=60.50,122.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=176.93,50.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=201.39,143.34");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=237.72,168.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=149.29,74.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=35.45,62.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=168.14,9.69");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=224.07,80.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=121.85,192.51");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=184.19,141.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=125.45,77.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=163.70,112.25");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=295.68,177.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=241.37,210.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=200.25,170.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=84.90,145.80");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=205.24,111.51");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=211.45,200.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=123.85,180.97");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=304.86,91.49");
    }

}

