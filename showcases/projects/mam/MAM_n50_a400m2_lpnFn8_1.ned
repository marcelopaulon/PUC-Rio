
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_1
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=96.36,393.29");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=165.50,360.65");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=200.31,374.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=212.93,326.29");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=146.46,333.51");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=169.39,270.38");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=81.61,295.15");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=73.18,357.60");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=204.85,295.21");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=207.66,385.97");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=192.23,259.21");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=175.54,244.53");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=115.35,212.87");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=29.95,309.77");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=77.49,311.71");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=195.20,343.83");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=201.45,363.04");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=152.61,385.39");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=133.21,387.81");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=185.25,190.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=111.16,348.90");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=125.97,311.07");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=164.38,310.27");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=264.36,396.28");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=196.64,287.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=178.59,381.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=123.10,250.19");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=86.98,323.56");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=151.88,323.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=176.80,365.24");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=243.89,335.59");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=184.22,309.77");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=139.54,344.80");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=248.16,224.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=35.93,290.11");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=156.25,348.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=201.33,327.14");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=227.72,384.71");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=291.34,343.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=218.73,345.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=238.22,234.83");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=47.05,244.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=73.44,397.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=122.67,270.88");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=266.14,346.51");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=253.48,379.76");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=174.47,298.91");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=206.81,248.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=107.25,289.79");
    }

}

