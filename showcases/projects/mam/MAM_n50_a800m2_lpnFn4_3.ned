
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_3
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
        @display("p=84.38,112.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=105.84,125.52");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=97.19,86.77");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=122.52,49.40");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=40.15,5.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=32.00,12.95");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=95.54,4.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=155.09,1.57");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=162.15,46.19");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=181.18,10.98");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=246.52,15.58");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=215.52,46.44");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=129.76,102.13");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=121.68,114.95");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=141.18,86.73");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=139.10,56.14");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=54.58,109.15");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=27.95,75.47");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=56.20,31.10");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=134.54,1.69");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=118.47,12.22");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=195.31,25.65");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=264.71,8.98");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=304.62,32.93");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=123.01,26.41");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=79.58,73.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=177.83,89.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=172.75,100.69");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=143.30,126.24");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=35.26,34.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=64.93,101.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=89.83,55.99");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=98.52,17.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=160.70,19.60");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=200.89,68.37");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=242.59,54.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=310.56,56.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=278.78,14.35");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=158.60,77.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=112.35,98.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=71.08,189.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=141.35,15.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=196.50,113.52");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=61.06,92.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=73.36,49.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=169.60,69.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=169.57,5.83");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=107.00,71.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=226.59,95.30");
    }

}

