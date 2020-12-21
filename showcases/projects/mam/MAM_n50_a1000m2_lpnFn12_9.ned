
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_9
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
        @display("p=15.72,139.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=0.17,151.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=59.32,121.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=74.32,74.48");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=14.82,55.41");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=57.10,140.01");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=10.08,129.42");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=83.83,116.42");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=103.31,54.53");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=55.19,100.07");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=104.93,154.02");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=35.23,99.17");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=37.58,141.55");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=52.08,40.87");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=110.32,106.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=48.92,59.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=79.09,139.59");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=135.82,136.71");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=137.64,120.97");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=134.49,58.49");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=40.16,154.83");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=10.72,157.70");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=46.96,130.18");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=87.90,46.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=127.26,93.64");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=75.26,99.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=73.87,86.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=114.83,136.47");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=29.23,50.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=97.16,124.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=49.28,164.29");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=11.07,193.71");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=65.29,81.29");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,58.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=112.88,71.93");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=48.80,199.36");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=36.44,168.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=102.26,167.67");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=23.54,15.79");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=156.01,162.04");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=91.95,153.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=23.71,128.85");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=18.17,32.55");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=85.21,63.57");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=140.09,82.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=31.78,88.62");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=30.34,187.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=24.11,175.78");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=157.76,118.07");
    }

}

