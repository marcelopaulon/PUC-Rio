
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_3
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=104.81,844.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=65.46,828.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=138.71,826.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=136.31,856.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=73.26,859.79");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=162.04,818.82");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=143.22,890.50");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=127.97,816.51");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=100.57,827.40");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=166.96,916.16");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=180.22,843.41");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=121.32,870.94");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=183.51,821.58");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=132.34,896.74");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=103.48,928.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=98.43,757.65");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=101.20,817.33");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=52.71,879.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=123.25,923.44");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=145.54,778.77");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=162.93,963.77");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=18.28,843.99");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=40.49,857.09");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=163.06,843.24");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=147.65,843.12");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=134.28,933.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=174.43,779.41");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=126.47,852.83");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=113.74,794.08");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=72.40,819.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=151.97,765.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=202.22,810.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=5.09,792.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=174.09,728.48");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=114.08,992.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=172.55,796.91");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=117.72,908.56");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=165.76,749.23");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=71.33,917.04");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=95.93,873.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=150.07,828.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=89.06,906.96");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=105.93,857.40");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=43.31,801.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=182.01,906.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=206.21,924.69");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=94.71,848.91");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=147.51,805.32");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=113.18,918.04");
    }

}

