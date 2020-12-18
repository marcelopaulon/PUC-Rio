
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-9
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
        @display("p=168.00,24.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=231.68,55.33");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=230.39,41.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=246.92,75.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=265.46,67.96");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=302.86,87.45");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=275.17,99.78");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=183.23,70.64");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=241.71,111.87");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=292.77,102.39");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=192.29,112.10");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=254.43,19.41");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=292.14,73.29");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=268.10,39.08");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=241.54,20.20");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=241.52,39.79");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=150.44,7.67");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=178.93,95.90");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=325.26,110.74");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=317.56,61.62");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=279.88,1.46");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=200.61,1.51");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=248.05,91.41");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=263.82,53.82");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=320.71,134.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=295.36,139.99");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=306.43,127.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=223.25,77.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=241.60,50.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=266.86,90.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=139.01,22.47");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=218.72,107.05");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=270.54,118.42");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=343.50,127.10");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=206.69,92.69");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=148.83,30.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=216.05,2.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=214.41,46.63");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=229.97,91.88");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=253.27,32.84");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=339.43,99.83");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=280.99,108.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=166.47,79.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=253.37,105.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=212.21,71.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=260.06,135.06");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=349.10,113.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=310.59,100.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=213.24,122.88");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=115.03,75.89");
    }

}

