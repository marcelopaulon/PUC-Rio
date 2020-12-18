
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_5
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=25.32,866.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=12.16,856.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=21.42,838.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=81.22,862.94");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=60.48,866.39");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=74.44,822.32");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=38.52,940.73");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=58.11,826.29");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=93.61,826.73");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=31.95,841.71");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=84.95,934.43");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=0.14,852.44");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=82.19,846.17");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=89.50,883.35");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=42.23,837.72");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=26.98,854.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=61.74,924.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=65.63,798.40");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=113.58,870.17");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=82.21,903.75");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=74.59,887.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=63.02,839.12");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=31.63,891.95");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=97.34,863.27");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=116.91,886.22");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=63.70,905.43");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=45.54,828.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=135.02,890.24");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=18.37,934.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=55.43,791.06");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=97.33,846.70");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=144.19,790.42");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=42.85,867.37");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=140.45,813.38");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=101.90,808.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=103.24,872.49");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=9.11,876.20");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=84.61,816.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=45.23,849.53");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=1.90,913.54");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=131.22,764.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=145.94,858.02");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=28.82,819.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=64.50,892.68");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=36.37,859.35");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=155.14,897.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=76.19,775.36");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=114.46,913.70");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=121.52,963.88");
    }

}

