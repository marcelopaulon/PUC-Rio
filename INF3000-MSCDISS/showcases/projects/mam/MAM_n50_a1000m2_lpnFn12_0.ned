
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_0
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
        @display("p=136.94,61.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=179.65,41.19");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=206.22,4.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=119.36,8.90");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=85.87,103.99");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=226.39,45.99");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=235.69,36.73");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=207.90,43.38");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=50.79,56.16");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=32.58,47.50");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=118.93,83.99");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=154.04,45.88");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=194.17,13.73");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=73.95,77.92");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=91.94,132.71");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=51.26,69.27");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=141.96,47.81");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=292.84,5.53");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=172.12,5.09");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=100.62,82.93");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=128.40,141.37");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=162.76,58.02");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=159.53,19.76");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=102.04,50.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=77.51,89.35");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=67.61,43.11");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=178.53,73.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=161.00,91.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=136.70,25.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=65.84,119.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=48.56,82.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=172.83,131.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=284.23,63.59");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=89.81,43.27");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=180.59,144.79");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=208.97,72.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=210.36,118.25");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=192.89,27.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=119.91,22.53");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=111.77,101.84");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=134.16,83.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=250.67,87.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=124.30,38.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=91.98,30.66");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=93.12,158.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=80.43,53.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=246.62,30.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=263.65,12.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=168.73,36.48");
    }

}

