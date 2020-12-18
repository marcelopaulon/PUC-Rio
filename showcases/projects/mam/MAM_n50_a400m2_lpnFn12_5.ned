
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_5
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
        @display("p=163.24,276.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=260.45,275.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=270.74,298.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=243.60,288.27");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=78.11,277.50");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=193.33,200.62");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=316.10,338.81");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=249.69,395.60");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=204.61,283.84");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=87.74,345.16");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=123.52,266.02");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=240.45,186.55");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=260.51,302.85");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=185.88,345.60");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=95.44,232.51");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=153.21,272.61");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=210.55,358.77");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=281.82,287.71");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=269.20,338.86");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=29.41,311.45");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=76.31,305.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=224.67,270.46");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=285.62,298.75");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=278.29,328.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=127.80,233.64");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=238.15,239.88");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=325.17,237.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=290.21,243.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=244.73,256.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=10.12,271.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=180.39,261.14");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=174.38,311.96");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=216.22,283.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=303.06,228.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=176.71,360.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=157.12,253.04");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=333.36,226.85");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=233.68,229.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=254.68,236.71");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=134.75,244.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=173.66,273.80");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=203.87,207.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=264.30,217.87");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=189.23,302.53");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=131.89,314.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=133.32,331.63");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=255.79,330.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=258.31,288.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=241.15,338.48");
    }

}

