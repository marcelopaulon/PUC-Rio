
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-8
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
        @display("p=300.00,302.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=369.11,232.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=336.49,281.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=275.88,263.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=233.34,216.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=298.14,201.45");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=380.46,163.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=371.03,178.88");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=399.55,117.00");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=328.86,48.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=347.96,51.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=338.90,73.93");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=370.21,137.37");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=329.06,301.99");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=294.88,287.89");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=379.87,263.74");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=272.44,222.04");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=240.00,159.74");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=334.39,262.53");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=399.84,166.96");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=298.69,146.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=340.44,141.46");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=325.48,118.94");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=258.26,73.43");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=374.90,62.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=376.39,116.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=286.89,327.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=288.56,217.54");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=340.45,248.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=246.57,190.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=217.54,234.79");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=304.39,219.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=361.95,148.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=368.91,156.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=386.96,92.04");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=366.21,88.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=292.70,49.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=292.81,120.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=354.53,73.05");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=294.37,273.37");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=285.54,229.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=314.11,260.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=350.43,301.08");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=204.19,193.28");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=254.14,128.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=356.09,180.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=390.20,131.45");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=338.18,191.56");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=347.16,114.49");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=301.98,40.52");
    }

}

