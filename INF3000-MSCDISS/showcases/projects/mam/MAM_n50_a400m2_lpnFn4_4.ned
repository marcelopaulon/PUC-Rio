
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_4
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=50.82,136.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=34.93,140.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=30.87,129.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=1.10,145.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=46.55,155.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=25.95,212.58");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=62.27,190.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=54.47,241.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=123.41,271.69");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=42.84,267.06");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=46.14,179.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=96.99,182.02");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=8.47,63.11");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=91.58,155.92");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=47.87,109.18");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=31.86,174.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=12.40,114.68");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=2.33,171.15");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=18.64,225.35");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=28.37,200.65");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=31.00,306.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=139.72,310.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=129.87,226.26");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=122.85,154.81");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=59.73,149.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=25.07,64.15");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=37.28,224.54");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=19.09,133.15");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=8.02,129.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=30.96,91.66");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=59.75,102.57");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=85.30,223.45");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=61.34,125.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=14.67,213.00");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=99.25,279.76");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=82.70,237.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=68.61,180.65");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=99.53,147.72");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=48.07,72.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=103.51,86.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=57.40,62.61");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=36.74,120.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=80.82,96.71");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=83.29,112.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=52.09,201.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=137.23,236.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=0.44,277.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=163.87,214.27");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=98.21,249.37");
    }

}

