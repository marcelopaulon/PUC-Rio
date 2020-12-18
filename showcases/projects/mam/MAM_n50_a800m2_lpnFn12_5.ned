
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_5
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=92.51,130.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=0.04,131.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=46.08,149.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=132.77,129.27");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=72.61,87.61");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=175.13,172.73");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=16.06,91.81");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=59.66,59.70");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=117.96,125.57");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=52.70,110.21");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=54.63,86.17");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=58.56,193.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=0.91,66.27");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=146.19,80.05");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=175.99,67.37");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=20.68,105.09");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=73.44,103.07");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=71.92,199.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=109.32,213.78");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=55.24,29.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=121.17,158.92");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=10.65,126.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=81.95,131.69");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=104.34,46.87");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=40.35,101.56");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=96.67,117.03");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=34.73,120.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=48.55,66.32");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=76.25,55.34");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=130.16,70.19");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=177.53,162.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=31.37,95.47");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=54.87,181.13");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=167.58,208.96");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=87.87,172.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=93.18,36.23");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=20.19,132.52");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=71.72,166.93");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=113.76,107.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=134.83,37.14");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=98.06,218.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=22.37,161.51");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=37.33,168.21");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=108.11,77.85");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=133.26,172.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=90.98,189.61");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=32.98,109.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=82.92,107.65");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=189.51,182.83");
    }

}

