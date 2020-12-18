
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_6
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=134.50,68.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=161.34,84.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=208.44,128.88");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=238.53,59.61");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=185.68,70.31");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=224.69,64.43");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=155.64,105.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=119.73,86.38");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=114.55,50.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=89.50,41.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=137.79,48.61");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=158.76,22.69");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=124.73,177.89");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=116.23,64.77");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=162.10,95.07");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=264.70,175.63");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=245.81,73.01");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=193.26,138.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=223.55,9.98");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=176.48,106.99");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=185.34,24.07");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=166.10,105.43");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=38.00,110.08");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=134.45,32.59");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=191.06,5.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=4.41,74.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=111.61,39.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=85.52,58.56");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=212.74,221.73");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=174.73,63.45");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=131.78,150.93");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=208.53,29.31");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=212.58,156.78");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=206.67,77.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=100.56,52.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=84.08,3.80");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=159.66,51.02");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=155.56,11.55");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=127.60,127.42");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=229.10,93.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=155.92,67.39");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=182.34,119.71");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=259.34,59.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=138.87,127.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=275.90,94.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=153.84,155.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=83.87,159.92");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=65.68,109.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=132.88,78.07");
    }

}

