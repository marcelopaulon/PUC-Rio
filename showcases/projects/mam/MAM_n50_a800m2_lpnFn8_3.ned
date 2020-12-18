
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_3
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
        @display("p=54.72,172.45");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=111.94,166.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=134.37,156.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=130.21,146.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=92.29,136.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=42.01,203.11");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=146.77,38.83");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=45.59,183.55");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=163.76,170.68");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=111.33,181.55");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=98.42,205.69");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=73.55,208.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=7.00,192.94");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=80.47,127.65");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=8.17,176.57");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=68.94,245.60");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=136.12,74.09");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=98.71,148.10");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=122.14,127.18");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=30.13,215.80");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=65.35,75.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=34.92,186.24");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=154.51,237.26");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=110.31,123.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=212.26,100.13");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=124.89,109.92");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=55.36,189.53");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=65.47,50.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=19.13,118.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=119.14,137.39");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=124.78,89.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=167.94,105.33");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=104.79,60.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=12.60,222.05");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=185.76,49.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=44.39,224.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=82.64,104.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=102.58,110.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=186.50,180.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=75.88,179.51");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=61.36,200.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=46.28,37.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=60.79,239.38");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=55.11,109.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=154.75,197.66");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=207.17,117.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=112.67,151.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=27.43,176.35");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=91.21,158.92");
    }

}

