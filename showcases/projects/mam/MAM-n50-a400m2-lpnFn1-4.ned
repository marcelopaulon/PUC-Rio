
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn1-4
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
        @display("p=384.00,240.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=337.40,238.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=343.18,160.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=394.15,166.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=377.07,118.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=383.73,64.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=368.15,62.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=380.96,92.19");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=376.83,74.88");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=288.14,49.79");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=254.36,36.38");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=232.28,82.85");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=152.10,80.17");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=85.13,127.45");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=59.29,53.46");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=2.61,107.33");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=34.95,86.78");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=56.10,77.78");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=106.44,91.87");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=73.37,92.91");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=6.36,86.09");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=76.36,72.04");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=92.02,43.89");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=91.11,65.91");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=78.75,152.09");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=77.28,166.77");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=34.87,165.82");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=48.08,176.65");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=33.11,128.71");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=21.04,111.79");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=56.51,109.09");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=56.92,27.40");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=86.83,30.29");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=86.49,108.00");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=93.00,181.16");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=88.00,147.60");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=118.08,180.48");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=53.06,127.83");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=30.11,156.78");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=89.07,117.74");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=78.99,198.57");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=154.02,176.57");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=231.05,213.93");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=205.22,188.71");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=161.60,137.59");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=231.62,188.82");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=279.70,157.62");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=288.76,168.68");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=266.10,126.27");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=247.02,129.61");
    }

}

