
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_1
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
        @display("p=66.99,89.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=16.91,58.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=44.66,7.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=84.04,59.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=164.60,116.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=120.65,182.38");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=102.13,186.30");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=55.14,99.27");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=104.56,13.39");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=34.94,79.52");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=40.57,118.06");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=216.24,101.61");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=117.52,224.50");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=44.55,177.65");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=104.72,86.96");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=27.77,104.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=50.83,17.06");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=82.73,24.41");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=150.25,64.19");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=90.64,244.69");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=67.91,10.84");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,99.20");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=37.21,57.55");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=127.26,54.72");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=113.25,78.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=148.07,89.15");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=142.25,162.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=130.98,121.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=125.16,78.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=21.81,39.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=114.20,8.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=101.74,60.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=77.64,113.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=132.59,154.89");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=88.94,48.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=60.29,144.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=28.49,92.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=7.02,17.26");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=162.99,18.19");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=120.19,103.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=116.87,208.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=61.00,116.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=66.07,132.90");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=17.72,110.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=38.19,15.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=126.13,67.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=95.72,175.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=91.60,220.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=36.15,148.17");
    }

}

