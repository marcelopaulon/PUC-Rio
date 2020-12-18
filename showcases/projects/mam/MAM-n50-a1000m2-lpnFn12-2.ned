
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-2
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
        @display("p=310.00,896.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=350.33,972.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=413.51,964.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=424.18,949.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=427.67,970.05");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=315.50,825.08");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=288.65,951.37");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=457.45,981.38");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=446.91,859.71");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=374.91,932.79");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=255.41,944.09");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=337.16,969.00");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=464.75,965.07");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=501.81,932.38");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=425.25,959.75");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=350.05,961.78");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=299.57,897.96");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=422.01,887.75");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=437.57,998.73");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=434.01,950.99");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=248.20,905.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=351.80,887.70");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=399.74,956.20");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=391.48,861.40");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=466.24,885.16");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=255.12,925.25");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=390.79,902.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=365.68,946.43");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=446.76,976.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=386.66,980.65");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=298.39,833.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=353.91,936.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=497.68,949.18");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=393.67,992.59");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=417.82,980.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=304.60,927.69");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=358.72,900.98");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=417.23,992.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=482.36,968.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=455.05,956.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=260.98,853.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=262.60,968.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=342.20,921.51");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=435.04,984.45");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=440.35,968.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=302.46,942.98");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=339.68,883.53");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=351.92,946.69");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=491.64,961.17");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=333.45,940.21");
    }

}

