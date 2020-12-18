
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-4
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
        @display("p=21.00,209.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=69.68,236.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=79.83,220.07");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=15.38,245.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=5.56,185.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=23.60,178.18");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=104.80,128.24");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=56.70,281.66");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=35.08,173.58");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=164.63,213.61");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=54.36,267.71");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=5.34,151.39");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=26.25,165.69");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=118.37,74.98");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=26.75,222.37");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=39.40,230.69");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=69.40,253.38");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=5.23,230.84");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=43.56,179.03");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=39.03,196.62");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=94.27,63.85");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=67.71,175.67");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=48.19,252.57");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=46.62,303.68");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=56.56,180.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=20.54,283.55");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=91.58,137.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=19.56,86.92");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=97.30,250.49");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=87.14,241.06");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=118.72,267.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=7.52,262.77");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=4.57,241.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=13.31,175.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=120.83,92.83");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=84.43,147.58");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=86.25,178.40");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=34.51,206.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=36.32,268.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=101.97,162.59");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=25.84,190.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=67.64,90.87");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=48.74,169.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=161.30,244.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=111.13,192.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=61.36,205.78");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=9.34,101.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=59.12,229.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=82.47,130.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=55.97,136.40");
    }

}

