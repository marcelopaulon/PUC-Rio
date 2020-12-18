
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-3
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
        @display("p=839.00,146.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=822.16,118.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=842.94,95.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=938.10,96.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=961.00,117.87");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=890.99,176.57");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=827.58,191.78");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=789.44,44.30");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=921.56,148.73");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=986.32,95.04");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=847.02,234.23");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=850.68,70.27");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=835.14,47.65");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=880.24,116.56");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=984.24,194.26");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=856.10,115.81");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=757.95,66.72");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=789.89,155.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=912.24,124.22");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=933.68,199.10");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=812.48,151.68");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=781.07,91.85");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=881.89,65.69");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=983.84,85.01");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=974.62,98.79");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=843.26,133.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=844.92,106.52");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=813.88,110.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=951.84,72.49");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=931.45,87.84");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=770.20,155.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=772.44,117.32");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=906.14,40.42");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=894.09,84.33");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=949.00,102.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=862.28,180.83");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=828.37,105.71");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=824.90,89.05");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=927.30,174.72");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=981.17,115.79");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=915.62,200.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=761.73,40.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=862.58,133.55");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=928.31,127.46");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=923.44,41.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=865.56,232.20");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=899.58,111.30");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=872.48,27.04");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=975.61,184.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=982.87,51.22");
    }

}

