
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_4
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
        @display("p=112.08,80.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=122.34,96.97");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=155.36,47.91");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=178.54,61.35");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=147.58,179.37");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=190.35,57.98");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=165.41,49.77");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=241.80,76.67");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=132.15,101.92");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=85.88,102.62");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=144.26,73.46");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=97.22,40.96");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=142.82,86.46");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=190.77,85.80");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=163.93,118.29");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=183.15,103.81");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=175.28,37.49");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=102.51,130.47");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=247.60,64.78");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=64.83,82.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=98.25,9.60");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=122.19,112.85");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=129.00,14.89");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=173.32,72.77");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=163.57,131.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=100.30,75.12");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=131.93,87.75");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=132.79,28.89");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=198.07,125.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=37.09,38.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=77.63,46.13");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=213.69,99.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=113.04,57.53");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=203.11,5.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=27.02,148.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=102.27,56.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=158.18,57.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=125.01,69.43");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=216.90,59.41");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=52.95,99.37");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=137.65,65.04");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=100.34,24.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=228.25,116.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=247.33,9.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=29.18,88.14");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=41.90,128.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=83.36,73.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=210.25,23.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=112.52,120.77");
    }

}

