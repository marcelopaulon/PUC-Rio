
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-6
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
        @display("p=621.00,849.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=667.28,856.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=669.34,938.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=757.35,972.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=743.93,995.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=725.24,983.88");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=725.13,927.86");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=614.02,823.33");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=663.96,842.17");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=711.60,867.87");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=738.30,958.66");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=769.98,983.55");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=788.83,959.64");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=790.77,897.49");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=613.39,912.84");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=681.95,807.09");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=635.90,942.14");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=741.26,980.02");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=750.71,985.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=641.68,978.19");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=678.78,892.06");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=606.10,875.49");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=639.53,883.89");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=747.35,931.15");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=781.28,940.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=716.97,912.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=695.24,975.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=659.24,982.14");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=590.76,800.32");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=687.72,863.73");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=694.05,957.27");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=730.45,998.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=771.87,963.51");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=716.26,989.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=733.26,934.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=707.37,838.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=683.74,832.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=682.63,902.33");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=769.89,946.69");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=712.04,948.44");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=781.55,998.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=752.66,900.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=547.85,912.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=637.47,899.79");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=752.09,947.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=698.70,984.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=729.64,907.84");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=803.11,959.19");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=672.24,990.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=620.77,783.48");
    }

}

