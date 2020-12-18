
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_4
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
        @display("p=108.88,286.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=160.73,217.95");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=202.01,307.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=226.07,309.15");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=85.33,323.70");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=77.12,303.29");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=228.25,244.15");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=164.45,349.53");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=203.29,357.22");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=32.61,351.91");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=57.62,267.52");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=103.15,275.64");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=186.17,300.32");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=307.16,279.83");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=132.13,323.78");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=49.57,361.19");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=153.27,118.42");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=212.20,267.39");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=276.34,346.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=184.82,285.48");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=94.83,251.64");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=94.21,264.78");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=290.99,352.72");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=310.62,359.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=71.77,314.83");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=106.45,315.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=205.57,204.01");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=185.15,265.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=157.69,362.45");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=108.09,390.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=117.11,367.46");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=215.30,201.65");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=163.21,297.21");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=275.51,369.50");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=59.42,307.26");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=91.47,307.68");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=128.02,225.46");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=204.41,293.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=210.00,242.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=56.18,346.47");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=116.05,253.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=87.62,202.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=180.54,356.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=255.76,304.62");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=111.23,304.23");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=62.10,220.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=194.65,241.10");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=273.23,263.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=234.81,333.88");
    }

}

