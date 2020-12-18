
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-1
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
        @display("p=103.00,245.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=88.12,232.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=97.66,229.06");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=123.64,260.42");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=72.05,242.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=40.19,304.99");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=96.47,304.22");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=82.55,258.97");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=48.23,262.48");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=116.53,212.82");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=138.96,274.56");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=100.01,191.79");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=4.62,277.97");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=118.52,334.06");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=108.67,269.90");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=67.96,221.99");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=61.23,246.06");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=155.90,229.43");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=89.98,187.32");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=64.98,329.46");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,378.37");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=50.76,293.08");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=52.82,208.19");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=168.29,292.53");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=201.02,244.38");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=2.93,181.38");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=52.74,226.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=173.06,362.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=178.18,212.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=148.60,199.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=70.64,177.83");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=186.28,335.85");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=133.70,259.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=32.52,314.81");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=101.75,286.53");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=31.82,180.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=150.98,307.81");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=140.38,178.77");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=110.78,189.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=55.16,271.43");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=35.40,231.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=108.89,303.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=132.19,192.33");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=49.83,196.90");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=31.45,256.68");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=81.13,282.14");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=2.26,193.99");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=71.45,291.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=98.85,314.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=162.07,213.33");
    }

}

