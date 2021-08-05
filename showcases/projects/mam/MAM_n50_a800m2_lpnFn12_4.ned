
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_4
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
        @display("p=109.04,110.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.31,77.55");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=85.08,147.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=123.26,195.43");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=114.94,50.89");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=140.35,99.92");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=170.42,66.44");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=148.18,144.20");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=103.86,122.12");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=56.93,77.26");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=107.67,40.74");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=177.95,126.67");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=40.79,119.81");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=56.28,256.13");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=144.07,117.94");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=65.89,56.37");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=117.35,119.85");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=54.46,138.34");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=121.47,226.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=49.67,183.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=74.93,189.40");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=80.61,56.15");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=83.30,74.61");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=88.59,240.11");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=114.14,142.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=127.44,161.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=150.46,167.06");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=16.97,190.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=99.67,239.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=84.38,91.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=186.86,94.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=104.92,147.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=55.97,162.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=219.38,202.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=87.55,31.18");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=42.52,78.46");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=151.38,68.52");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=38.11,87.49");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=81.38,273.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=163.01,124.00");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=133.32,127.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=142.35,159.99");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=123.79,97.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=105.57,174.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=87.96,104.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=101.57,79.44");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=132.53,21.63");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=95.26,143.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=84.94,221.27");
    }

}

