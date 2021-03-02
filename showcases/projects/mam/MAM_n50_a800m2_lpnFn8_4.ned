
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_4
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=180.27,49.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=241.61,84.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=286.73,67.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=269.09,112.95");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=290.15,120.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=335.51,108.54");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=147.26,33.95");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=209.01,72.31");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=294.13,104.49");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=285.94,78.16");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=364.17,141.19");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=275.25,174.17");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=344.10,98.28");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=100.04,184.22");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=133.51,34.45");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=206.78,111.96");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=218.13,21.52");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=244.50,59.84");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=372.82,78.19");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=305.14,24.89");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=55.46,112.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=185.41,16.39");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=284.88,156.46");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=284.54,57.10");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=260.78,78.22");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=208.13,134.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=364.36,52.57");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=109.41,45.47");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=111.49,55.66");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=212.21,98.21");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=266.06,142.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=279.02,184.35");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=304.45,151.84");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=392.06,79.48");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=93.09,31.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=240.68,35.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=328.45,50.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=348.93,63.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=265.42,27.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=201.80,97.11");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=284.53,129.18");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=116.31,118.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=156.30,11.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=209.53,37.78");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=264.02,0.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=248.97,195.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=222.53,72.70");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=379.46,188.00");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=64.79,157.30");
    }

}

