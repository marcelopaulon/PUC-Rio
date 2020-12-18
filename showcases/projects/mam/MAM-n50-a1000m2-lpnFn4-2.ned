
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-2
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
        @display("p=920.00,16.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=892.83,93.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=942.26,74.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=851.91,81.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=838.50,81.56");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=805.48,52.31");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=817.28,53.43");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=781.59,110.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=788.34,186.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=694.96,220.60");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=764.48,238.20");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=793.95,172.06");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=781.83,160.23");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=885.71,36.02");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=863.14,51.64");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=975.02,167.69");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=771.25,100.96");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=895.70,13.05");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=803.91,22.29");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=824.08,82.83");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=759.08,137.33");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=842.97,207.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=681.69,203.39");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=761.30,217.51");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=736.42,127.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=763.18,123.08");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=923.03,25.72");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=902.86,53.72");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=987.69,87.05");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=832.44,45.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=909.02,98.51");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=882.37,110.44");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=821.64,130.31");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=872.25,87.02");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=776.94,263.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=603.81,239.39");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=784.06,256.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=868.04,189.44");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=731.78,233.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=873.17,28.08");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=873.60,116.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=860.51,87.98");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=812.87,36.53");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=862.44,151.13");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=847.81,62.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=791.83,4.05");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=771.92,188.71");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=772.44,170.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=673.99,224.40");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=708.27,319.11");
    }

}

