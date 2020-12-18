
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-3
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
        @display("p=241.00,39.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=207.70,117.85");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=267.20,160.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=294.10,199.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=285.65,239.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=226.22,289.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=191.14,289.43");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=185.85,64.96");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=208.43,103.18");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=328.73,189.48");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=208.95,181.16");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=258.54,212.60");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=161.25,347.20");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=234.78,308.61");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=248.66,57.46");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=197.52,47.69");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=168.98,159.65");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=311.30,205.57");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=273.03,198.84");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=253.45,283.12");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=206.34,301.72");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=261.83,83.57");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=257.01,67.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=262.74,186.81");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=199.19,210.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=220.84,236.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=244.78,274.40");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=126.05,287.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=266.34,106.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=169.37,113.18");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=322.10,87.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=308.85,183.05");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=342.64,257.93");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=228.76,279.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=153.23,274.99");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=283.27,98.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=195.22,152.86");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=277.36,156.00");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=282.36,281.25");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=299.02,332.68");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=267.54,309.29");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=192.73,311.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=262.27,18.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=282.64,139.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=277.53,107.09");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=209.06,163.88");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=276.91,260.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=184.86,211.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=126.82,261.10");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=245.65,29.98");
    }

}

