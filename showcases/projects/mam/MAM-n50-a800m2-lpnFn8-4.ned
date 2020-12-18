
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-4
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
        @display("p=293.00,99.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=337.54,100.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=292.23,171.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=308.26,145.22");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=376.15,102.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=416.09,183.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=386.13,257.87");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=319.19,80.04");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=391.50,117.04");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=336.70,136.76");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=288.27,140.68");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=424.52,32.79");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=424.41,160.14");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=421.23,224.17");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=299.33,35.63");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=242.55,123.14");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=349.11,219.65");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=315.92,152.20");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=462.59,129.32");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=419.42,236.03");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=357.14,272.70");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=367.13,69.10");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=279.34,133.99");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=269.98,212.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=351.46,167.51");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=367.26,161.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=439.54,271.28");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=369.05,269.98");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=284.67,113.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=410.75,67.04");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=270.42,191.91");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=362.59,149.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=357.65,54.21");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=409.44,131.72");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=378.42,299.44");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=314.73,2.39");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=326.54,109.97");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=212.95,230.16");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=299.12,74.41");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=320.43,177.78");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=411.19,206.90");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=344.29,343.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=373.01,135.89");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=287.18,79.64");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=260.42,145.07");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=299.68,218.77");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=308.37,45.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=473.78,212.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=449.35,307.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=361.59,129.68");
    }

}

