
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_7
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
        @display("p=102.57,80.08");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=53.56,76.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=65.38,105.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=42.02,35.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=59.62,7.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=81.92,36.89");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=124.83,48.04");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=167.20,75.60");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=70.76,65.98");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=32.66,18.31");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=100.11,11.82");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=106.84,64.64");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=138.21,127.28");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=183.11,72.35");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=41.05,118.30");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=32.07,69.02");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=56.56,59.21");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=130.92,66.92");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=3.83,4.90");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=156.95,36.36");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=132.65,29.92");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=50.29,14.58");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=29.85,6.89");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=111.21,9.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=150.50,93.95");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=19.54,133.05");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=167.57,63.28");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=44.57,129.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=80.01,112.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=40.37,79.46");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,20.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=15.82,94.05");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=139.46,96.22");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=204.43,53.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=64.53,76.09");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=14.87,41.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=38.34,60.49");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=97.07,129.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=24.33,157.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=164.22,118.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=1.94,57.25");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=60.26,205.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=28.53,37.48");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=17.22,63.29");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=17.98,79.77");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=149.86,52.47");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=149.04,128.97");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=77.38,47.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=71.02,37.36");
    }

}

