
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-2
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
        @display("p=320.00,302.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=340.73,353.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=361.27,322.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=333.02,289.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=343.17,255.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=373.10,247.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=379.87,205.49");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=363.27,238.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=358.81,297.22");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=356.62,253.50");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=267.28,339.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=253.26,353.76");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=223.89,368.78");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=248.00,234.25");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=325.09,331.56");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=386.02,334.64");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=304.59,292.89");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=302.73,173.32");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=314.51,220.13");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=365.52,190.67");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=380.54,267.20");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=266.47,316.23");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=343.77,297.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=278.25,373.96");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=219.61,274.17");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=247.29,335.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=316.17,317.62");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=321.21,347.67");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=357.66,283.67");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=322.15,272.09");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=331.71,207.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=295.48,238.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=399.23,300.89");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=379.45,222.24");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=387.09,353.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=390.56,255.09");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=219.18,325.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=237.67,350.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=248.75,369.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=277.01,297.83");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=372.98,370.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=333.60,251.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=314.60,292.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=334.77,324.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=394.09,322.29");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=391.62,217.02");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=324.29,281.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=365.64,305.05");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=340.02,335.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=295.21,312.15");
    }

}

