
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-9
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
        @display("p=388.00,132.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=375.88,142.45");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=397.39,150.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=382.82,219.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=390.01,244.09");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=357.25,236.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=399.18,257.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=362.64,192.00");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=390.44,99.55");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=389.71,68.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=338.15,136.34");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=291.64,178.04");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=297.16,159.86");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=333.24,174.30");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=375.37,130.23");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=355.92,160.61");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=383.17,253.02");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=324.50,296.09");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=352.06,202.97");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=368.48,213.68");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=337.14,259.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=395.03,110.44");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=351.47,17.53");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=321.30,210.25");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=284.48,161.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=267.11,205.61");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=316.75,146.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=393.67,172.04");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=375.30,163.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=351.22,284.46");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=378.74,330.21");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=327.04,264.94");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=352.54,340.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=297.94,266.63");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=383.56,107.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=360.38,79.39");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=337.59,150.71");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=310.91,213.00");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=262.60,91.24");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=293.40,117.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=348.68,146.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=338.03,109.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=341.27,199.38");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=349.43,297.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=399.64,235.82");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=379.95,285.66");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=278.70,138.99");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=321.32,69.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=380.62,53.30");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=358.36,113.60");
    }

}

