
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_0
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,121.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=23.95,201.52");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=81.71,131.40");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=160.18,117.06");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=111.89,99.06");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=136.34,184.21");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=36.82,171.25");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=6.04,136.48");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=171.86,133.46");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=40.39,148.93");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=56.56,131.92");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=42.74,228.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=58.86,180.78");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=176.41,114.59");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=51.28,145.87");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=50.79,78.42");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=28.11,213.47");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=35.83,184.87");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=149.65,105.08");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=169.25,70.54");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=87.44,94.18");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=9.38,237.12");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=22.19,111.40");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=123.88,74.90");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=30.48,73.01");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=60.57,151.54");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=5.72,272.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=110.47,158.39");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=160.97,101.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=87.74,115.01");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=104.83,149.91");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=83.05,211.41");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=35.17,122.25");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=96.59,129.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=85.94,148.45");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=102.78,42.00");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=5.17,178.56");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=152.33,199.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=141.52,155.72");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=90.36,48.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=83.72,201.11");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=11.39,282.67");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=13.75,64.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=137.49,173.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=151.65,68.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=98.78,81.00");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=63.06,115.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=29.10,162.40");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=202.80,130.07");
    }

}

