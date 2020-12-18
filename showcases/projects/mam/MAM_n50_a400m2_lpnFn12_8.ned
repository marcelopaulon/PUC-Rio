
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_8
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
        @display("p=21.51,117.15");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=33.90,34.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=17.50,66.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=43.02,159.48");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=76.08,154.25");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=25.85,102.78");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=73.40,91.12");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=105.75,46.36");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=121.94,170.43");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=114.53,91.56");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=85.46,95.37");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=48.82,23.34");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=12.06,157.38");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=46.84,193.32");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=21.13,54.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=35.56,86.67");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=42.74,62.05");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=62.65,15.14");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=32.03,170.17");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=26.27,90.73");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=33.41,111.35");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=21.54,2.20");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=43.81,93.06");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=23.76,151.85");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=86.65,53.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=36.02,147.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=71.47,4.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=83.99,78.08");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=57.51,80.84");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=137.49,74.51");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=18.65,77.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=72.92,66.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=6.86,10.96");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=67.39,231.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=116.39,80.78");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=67.46,144.51");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=42.44,7.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=26.13,26.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=92.85,188.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=90.90,85.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=12.99,127.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=40.40,131.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=56.45,105.28");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=2.24,231.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=162.78,91.96");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=43.33,117.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=1.21,97.12");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=2.48,1.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=61.87,155.78");
    }

}

