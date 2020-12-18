
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_9
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
        @display("p=111.79,105.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=89.03,40.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=24.46,56.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=79.13,95.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=121.64,86.00");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=128.07,77.30");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=165.25,116.23");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=61.79,71.33");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=120.11,112.78");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=31.61,119.58");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=10.84,159.50");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=104.64,180.18");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=89.30,77.91");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=89.76,114.57");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=75.40,157.29");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=92.24,15.43");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=55.90,102.39");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=112.57,29.72");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=115.97,169.42");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=206.79,123.11");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=105.31,75.40");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=205.19,110.35");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=101.00,30.42");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=41.10,23.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=14.21,88.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=83.67,144.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=146.01,2.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=67.76,123.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=87.51,129.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=128.49,3.45");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=0.72,95.17");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=31.36,18.25");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=124.24,38.01");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=182.55,118.98");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=169.25,165.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=171.67,141.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=1.86,30.66");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=13.80,63.10");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=104.45,54.12");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=98.20,64.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=76.76,15.62");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=139.59,146.09");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=106.17,115.41");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=142.69,77.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=33.06,65.66");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=157.04,89.07");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=53.78,54.41");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=76.28,85.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=41.55,33.27");
    }

}

