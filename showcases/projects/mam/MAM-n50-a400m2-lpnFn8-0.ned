
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-0
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
        @display("p=228.00,223.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=271.60,270.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=232.88,191.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=290.91,181.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=307.37,110.78");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=326.13,49.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=267.01,78.66");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=196.80,248.69");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=314.07,279.78");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=262.49,236.72");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=345.00,215.75");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=284.12,26.73");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=358.58,41.58");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=258.63,47.57");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=148.66,235.54");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=259.55,300.65");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=219.51,156.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=329.46,197.04");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=318.74,118.78");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=291.36,38.46");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=231.79,32.55");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=282.00,193.97");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=281.38,263.44");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=217.74,206.12");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=357.91,144.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=264.90,98.13");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=336.57,43.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=260.10,66.52");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=215.91,260.60");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=298.36,345.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=214.87,225.14");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=287.94,250.26");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=264.44,195.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=323.18,99.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=230.42,90.21");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=230.91,171.61");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=242.19,259.49");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=247.44,269.12");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=299.49,230.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=220.96,98.72");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=319.22,40.29");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=339.36,22.89");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=198.57,136.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=269.93,256.04");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=279.46,143.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=277.10,120.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=303.79,92.46");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=369.67,43.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=199.51,147.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=231.65,213.19");
    }

}

