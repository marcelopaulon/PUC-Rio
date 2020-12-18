
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-9
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
        @display("p=989.00,894.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=967.44,875.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=908.11,846.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=951.74,904.88");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=965.73,913.77");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=973.14,839.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=989.40,862.72");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=933.58,941.14");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=994.94,917.76");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=914.67,771.79");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=937.85,816.36");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=932.10,959.91");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=972.78,814.98");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=959.98,924.31");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=984.40,873.61");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=885.04,900.62");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=914.08,863.83");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=889.82,880.85");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=974.19,951.93");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=997.22,821.61");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=942.25,793.78");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=941.85,866.99");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=961.11,889.43");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=837.86,790.33");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=975.73,899.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=938.71,881.78");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=965.67,786.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=999.37,882.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=979.50,794.45");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=907.17,821.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=862.19,846.65");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=946.12,896.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=984.03,943.82");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=961.50,849.52");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=954.93,875.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=903.19,876.78");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=920.05,882.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=908.54,919.17");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=980.22,961.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=949.38,943.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=945.65,832.46");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=996.99,953.92");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=998.74,971.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=884.36,868.16");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=966.07,796.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=956.98,992.29");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=972.46,941.61");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=919.13,807.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=995.10,848.24");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=999.78,907.89");
    }

}

