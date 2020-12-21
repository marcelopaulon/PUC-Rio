
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_2
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=83.29,82.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=94.76,80.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=35.71,76.71");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=43.97,63.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=64.21,62.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=24.02,66.42");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=82.25,96.35");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=31.67,123.15");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=53.59,168.83");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=24.30,91.33");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=65.86,90.11");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=0.37,14.02");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=7.52,100.01");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=108.01,129.83");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=90.59,154.19");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=53.05,102.76");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=39.75,95.53");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=121.78,16.71");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=56.68,83.62");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=25.98,39.29");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=12.35,64.19");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=8.61,26.21");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=130.34,99.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=7.67,153.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=118.93,0.09");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=72.88,68.83");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=12.18,81.54");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=90.36,180.62");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=158.56,92.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=136.82,43.16");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=29.96,25.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=87.72,111.40");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=46.58,44.26");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=36.97,51.49");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=102.45,12.74");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=106.82,111.35");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=61.52,74.65");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=23.73,154.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=97.93,60.17");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=73.25,47.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=17.46,3.80");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=112.83,192.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=13.43,45.39");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=88.04,38.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=47.93,125.51");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=92.70,19.19");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=3.56,131.32");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=36.89,136.61");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=183.49,73.68");
    }

}

