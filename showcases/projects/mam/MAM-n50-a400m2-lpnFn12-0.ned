
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-0
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
        @display("p=120.00,375.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=213.30,378.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=229.86,331.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=205.05,244.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=240.75,204.86");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=164.59,389.67");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=200.66,372.11");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=215.80,347.45");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=183.46,266.18");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=282.04,248.39");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=25.37,360.75");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=188.83,397.87");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=173.47,333.54");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=115.33,239.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=334.17,227.03");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=75.80,319.06");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=225.54,376.58");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=228.39,271.40");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=190.91,181.45");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=285.54,282.63");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=151.29,359.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=182.68,371.64");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=236.99,369.13");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=171.76,306.91");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=197.62,154.14");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=186.09,322.91");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=211.93,332.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=186.43,354.42");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=231.17,151.60");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=239.48,144.48");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=132.35,373.53");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=185.95,343.91");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=260.73,245.39");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=128.57,246.22");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=292.26,178.05");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=123.76,399.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=294.86,364.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=195.23,317.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=207.55,255.36");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=172.43,174.56");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=145.55,350.76");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=260.42,372.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=154.92,370.39");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=206.68,197.18");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=288.94,236.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=141.07,331.03");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=262.24,351.84");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=162.50,284.47");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=164.52,188.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=228.65,202.97");
    }

}

