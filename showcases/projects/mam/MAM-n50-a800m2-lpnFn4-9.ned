
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-9
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
        @display("p=359.00,44.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=398.76,61.84");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=457.42,138.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=514.67,148.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=428.94,178.61");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=387.28,108.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=364.28,91.83");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=384.78,98.22");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=355.57,165.01");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=365.21,173.28");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=275.31,166.35");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=329.78,152.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=319.38,155.48");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=386.83,9.92");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=422.21,27.56");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=421.10,142.60");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=467.77,105.44");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=474.33,191.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=380.05,71.29");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=275.30,109.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=430.86,118.74");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=443.31,131.97");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=305.74,116.43");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=246.54,93.98");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=300.95,148.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=309.91,166.55");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=377.71,17.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=338.64,58.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=487.32,200.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=577.05,74.08");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=409.18,177.88");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=324.35,88.17");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=445.13,75.95");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=413.65,56.78");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=343.91,137.81");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=309.46,216.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=302.74,250.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=312.13,129.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=349.78,91.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=428.52,76.68");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=336.99,76.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=461.50,60.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=528.12,77.78");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=383.70,197.03");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=418.15,102.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=387.33,47.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=451.93,53.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=335.72,236.06");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=389.33,188.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=281.31,227.02");
    }

}

