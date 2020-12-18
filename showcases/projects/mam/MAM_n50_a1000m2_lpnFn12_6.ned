
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_6
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
        @display("p=139.41,93.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=157.42,125.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=87.29,126.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=97.85,112.78");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=189.27,137.27");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=148.17,98.51");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=227.92,76.45");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=108.06,177.45");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=31.58,76.81");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=17.64,140.56");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=198.30,57.26");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=172.71,194.47");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=44.46,96.08");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=128.18,121.29");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=59.82,93.13");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=179.49,17.38");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=131.34,215.00");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=17.36,125.36");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=194.70,100.04");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=159.29,21.67");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=141.45,17.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=148.91,34.58");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=65.18,198.18");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=52.01,45.98");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=25.76,152.09");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=210.12,74.07");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=122.57,200.20");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=117.70,80.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=146.39,195.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=168.89,93.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=121.46,102.44");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=64.18,115.65");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=151.29,74.56");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=75.84,64.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=137.62,188.20");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=133.68,102.23");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=155.59,224.00");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=123.40,174.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=75.00,34.71");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=83.45,111.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=102.33,89.19");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=205.78,179.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=139.72,149.80");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=0.76,111.54");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=123.86,47.85");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=110.33,125.51");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,113.32");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=58.93,189.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=76.07,96.20");
    }

}

